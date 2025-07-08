using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    bakers obj = new bakers();
    public static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
    }
    public void fillgrid()
    {
        string sel="select * from tbl_shop s inner join tbl_place p on s.place_id=p.place_id inner join tbl_district d on p.district_id=d.district_id where shop_status=0 order by shop_id ASC";
        obj.FillGridView(sel, grd_shop);
        string sel1 = "select * from tbl_shop s inner join tbl_place p on s.place_id=p.place_id inner join tbl_district d on p.district_id=d.district_id where shop_status=2 order by shop_id ASC";
        obj.FillGridView(sel1, grd_reject);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "accept")
        {
            string update = "update tbl_shop set shop_status='1' where shop_id='" + id + "'";
            obj.ExecuteCommands(update);
            Response.Write("<script>alert('Accepted')</script>");
        }
        if (e.CommandName == "del")
        {
            string update = "update tbl_shop set shop_status='2' where shop_id='" + id + "'";
            obj.ExecuteCommands(update);
            Response.Write("<script>alert('Rejected')</script>");
        }
        fillgrid();
    }
    protected void grd_reject_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "retrieve")
        {
            string update = "update tbl_shop set shop_status='0' where shop_id='" + id + "'";
            obj.ExecuteCommands(update);
            Response.Write("<script>alert('Retrieved')</script>");

        }
    }
}