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
        string ins = "insert into tbl_complainttype(complainttype_name) values('" + txt_complaint.Text + "')";
        obj.ExecuteCommands(ins);
        Response.Write("<script>alert('Values successfully inserted')</script>");
        fillgrid();
        cancel();
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_complainttype order by complainttype_name ASC";
        obj.FillGridView(sel, grd_complaint);
    }
    public void cancel()
    {
        txt_complaint.Text = "";
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        cancel();
        fillgrid();
    }
    protected void grd_complaint_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "del")
        {
            string del = "delete from  tbl_complainttype where complainttype_id='" + id + "'";
            obj.ExecuteCommands(del);
        }
        fillgrid();
    }
}