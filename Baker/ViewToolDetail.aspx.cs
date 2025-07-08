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
        fillgrid();
        fillgallery();
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_tool where tool_id='" + Session["tid"] + "'";
        obj.FillDetailsView(sel, dv_tool);
    }
    public void fillgallery()
    {
        string select = "select * from tbl_tool t inner join tbl_toolgallery g on t.tool_id=g.tool_id where t.tool_id='" + Session["tid"] + "'";
        obj.FillGridView(select, grd_gallery);
    }
    protected void dv_tool_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void dv_tool_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "cart")
        {
            Session["tid"] = id;
            Response.Redirect("ToolCart.aspx");
        }
    }
}