using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Deliveryboy_Default : System.Web.UI.Page
{
    bakers obj = new bakers();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string select = "select * from tbl_deliveryboy where deliveryboy_id='" + Session["dbid"] + "'";
            DataTable dt = obj.GetDataTable(select);
            txt_name.Text = dt.Rows[0]["deliveryboy_name"].ToString();
            txt_contact.Text = dt.Rows[0]["deliveryboy_contact"].ToString();
            txt_email.Text = dt.Rows[0]["deliveryboy_email"].ToString();
            txt_addr.Text = dt.Rows[0]["deliveryboy_address"].ToString();
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        string update = "update tbl_deliveryboy set deliveryboy_name='" + txt_name.Text + "',deliveryboy_contact='" + txt_contact.Text + "',deliveryboy_email='" + txt_email.Text + "',deliveryboy_address='" + txt_addr.Text + "' where deliveryboy_id='" + Session["dbid"] + "'";
        obj.ExecuteCommands(update);
        Response.Write("<script>alert('Updated successfully')</script>");
    }
}