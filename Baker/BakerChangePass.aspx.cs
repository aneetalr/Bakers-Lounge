using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Baker_Default : System.Web.UI.Page
{
    bakers obj=new bakers();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sel = "select * from tbl_baker where baker_id='" + Session["bid"] + "'";
        DataTable dt=obj.GetDataTable(sel);
        string p = dt.Rows[0]["baker_password"].ToString();
        if (p == txt_currentpass.Text)
        {
            if (txt_newpass.Text == txt_repass.Text)
            {
                string update = "update tbl_baker set baker_password='" + txt_newpass.Text + "' where baker_id='" + Session["bid"] + "'";
                obj.ExecuteCommands(update);
                Response.Write("<script>alert('Successfully changed password')</script>");
            }
        }
    }
}