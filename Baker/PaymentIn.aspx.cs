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
    protected void Button1_Click(object sender, EventArgs e)
    {
        string update = "update tbl_ingredientbook set inbook_pstatus=1 where inbook_id='" + Session["ibid"] + "'";
        obj.ExecuteCommands(update);

        Response.Write("<script>alert('Payment Completed')</script>");
        Response.Redirect("InBookStatus.aspx");
    }
}