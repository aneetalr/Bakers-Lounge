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

    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        string update = "update tbl_productbook set productbook_pickupaddr='" + txt_addr.Text + "' where productbook_id='" + Session["pbid"] + "'";
        obj.ExecuteCommands(update);
        Response.Write("<script>alert('Pickup address updated')</script>");
        Response.Redirect("RequestDStatus.aspx");
    }
}