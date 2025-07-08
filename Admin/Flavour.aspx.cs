using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
        string ins = "insert into tbl_flavour(flavour_name) values('" + txt_flavour.Text + "')";
        obj.ExecuteCommands(ins);
        fillgrid();
        cancel();
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_flavour order by flavour_name ASC";
        obj.FillGridView(sel, grd_district);
    }
    protected void grd_district_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_flavour where flavour_id='" + id + "'";
            obj.ExecuteCommands(del);
        }
        fillgrid();
    }
    public void cancel()
    {
        txt_flavour.Text = "";
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        cancel();
        fillgrid();
    }
}