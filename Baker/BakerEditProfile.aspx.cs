using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Baker_Default : System.Web.UI.Page
{
    bakers obj = new bakers();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string select = "select * from tbl_baker where baker_id='" + Session["bid"] + "'";
            DataTable dt = obj.GetDataTable(select);
            txt_name.Text = dt.Rows[0]["baker_name"].ToString();
            txt_contact.Text = dt.Rows[0]["baker_contact"].ToString();
            txt_email.Text = dt.Rows[0]["baker_email"].ToString();
            txt_addr.Text = dt.Rows[0]["baker_address"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string update = "update tbl_baker set baker_name='" + txt_name.Text + "',baker_contact='" + txt_contact.Text + "',baker_email='" + txt_email.Text + "',baker_address='" + txt_addr.Text + "' where baker_id='" + Session["bid"] + "'";
        obj.ExecuteCommands(update);
        Response.Write("<script>alert('Profile edited successfully')</script>");
    }
}