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
    protected void btn_save_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_caketype(caketype_name) values('" + txt_caketype.Text + "')";
        obj.ExecuteCommands(ins);
        Response.Write("<script>alert('Values successfully inserted')</script>");
        fillgrid();
        cancel();
    }
    public void cancel()
    {
        txt_caketype.Text = "";
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_caketype order by caketype_name ASC";
        obj.FillGridView(sel, grd_cake);
    }
    protected void grd_cake_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_caketype where caketype_id='" + id + "'";
            obj.ExecuteCommands(del);
            
        }
        fillgrid();
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        cancel();
        fillgrid();
    }
}