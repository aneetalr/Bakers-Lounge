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
        string sel = "select * from tbl_deliveryboy where deliveryboy_id='" + Session["dbid"] + "'";
        DataTable dt = obj.GetDataTable(sel);
        string p = dt.Rows[0]["deliveryboy_password"].ToString();
        if (p == txt_currentpass.Text)
        {
            if (txt_newpass.Text == txt_repass.Text)
            {
                string update = "update tbl_deliveryboy set deliveryboy_password='" + txt_newpass.Text + "' where deliveryboy_id='" + Session["dbid"] + "'";
                obj.ExecuteCommands(update);
                Response.Write("<script>alert('Changed successfully')</script>");
            }
        }
    }
}