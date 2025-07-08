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
        string sel = "select * from tbl_deliveryboy db inner join tbl_place p on db.place_id=p.place_id inner join tbl_district d on p.district_id=d.district_id where deliveryboy_status=0 order by deliveryboy_id ASC";
        obj.FillGridView(sel, grd_deliveryboy);
        string sel1 = "select * from tbl_deliveryboy db inner join tbl_place p on db.place_id=p.place_id inner join tbl_district d on p.district_id=d.district_id where deliveryboy_status=2 order by deliveryboy_id ASC";
        obj.FillGridView(sel1, grd_reject);
    }
    protected void grd_deliveryboy_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "accept")
        {
            string update = "update tbl_deliveryboy set deliveryboy_status='1' where deliveryboy_id='" + id + "'";
            obj.ExecuteCommands(update);
            Response.Write("<script>alert('Accepted')</script>");
            
        }
        if (e.CommandName == "del")
        {
            string update = "update tbl_deliveryboy set deliveryboy_status='2' where deliveryboy_id='" + id + "'";
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
            string update = "update tbl_deliveryboy set deliveryboy_status='0' where deliveryboy_id='" + id + "'";
            obj.ExecuteCommands(update);
            Response.Write("<script>alert('Retrieved')</script>");

        }
    }
}