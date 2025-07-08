using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_Default : System.Web.UI.Page
{
    bakers obj = new bakers();
    public static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_district(district_name) values('" + txt_district.Text + "')";
        obj.ExecuteCommands(ins);
        Response.Write("<script>alert('Values successfully inserted')</script>");
        fillgrid();
        cancel();
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_district  order by district_name ASC";
        obj.FillGridView(sel, grd_district);
    }
    protected void grd_district_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_district where district_id='" + id + "'";
            obj.ExecuteCommands(del);
            string del1 = "delete from tbl_place where district_id='" + id + "'";
            obj.ExecuteCommands(del1);
        }
        fillgrid();
    }
    public void cancel()
    {
        txt_district.Text = "";
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        cancel();
        fillgrid();
    }
}