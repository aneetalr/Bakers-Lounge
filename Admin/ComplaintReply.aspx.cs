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
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        string up = "update tbl_complaint set complaint_reply='" + txt_reply.Text + "',complaint_replydate='" + DateTime.Now.ToShortDateString() + "',complaint_status=1 where complaint_id='" + Session["cmpid"] + "'";
        obj.ExecuteCommands(up);
        Response.Write("<script>alert('Reply send')</script>");
        cancel();
    }
    public void cancel()
    {
        txt_reply.Text = "";
    }
}