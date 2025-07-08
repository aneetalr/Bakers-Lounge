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
    public static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        filldl();
    }
    public void filldl()
    {
        string sel = "select * from tbl_tool where shop_id='" + Session["sid"] + "'";
        obj.FillDataList(sel, dl_tool);
    }
    protected void dl_tool_ItemCommand(object source, DataListCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "details")
        {
            Session["tid"] = id;
            Response.Redirect("ViewToolDetail.aspx");
        }
    }
}