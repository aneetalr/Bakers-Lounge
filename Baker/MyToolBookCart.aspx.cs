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
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_toolbook tb inner join tbl_tool t on tb.tool_id=t.tool_id where baker_id='" + Session["bid"] + "' and toolbook_cstatus=0";
        obj.FillGridView(sel, grd_toolcart);
    }
    protected void grd_toolcart_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "book")
        {
            Session["tbid"] = id;
            Response.Redirect("ToolBook.aspx");
        }
        if (e.CommandName == "del")
        {
            string del = "delete  from tbl_toolbook where toolbook_id='" + id + "'";
            obj.ExecuteCommands(del);
        }
    }
}