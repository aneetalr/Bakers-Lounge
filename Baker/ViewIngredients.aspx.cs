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
        string sel = "select * from tbl_ingredient where shop_id='" + Session["sid"] + "'";
        obj.FillDataList(sel, dl_ingredient);
    }
    protected void dl_ingredient_ItemCommand(object source, DataListCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "details")
        {
            Session["inid"] = id;
            Response.Redirect("ViewInDetail.aspx");
        }
    }
}