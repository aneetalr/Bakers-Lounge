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
        if (!IsPostBack)
        {
            filldistrict();
            filldl();
        }
    }
    public void filldistrict()
    {
        obj.FillDrop(ddl_district, "district_name", "district_id", "tbl_district");
    }
    public void fillplace()
    {
        obj.FillDrop(ddl_place, "place_name", "place_id", "tbl_place", "district_id='" + ddl_district.SelectedValue + "'");
    }
    public void filldl()
    {
        string sel = "select * from tbl_shop where place_id='" + ddl_place.SelectedValue + "' and shop_status='"+1+"'";
        obj.FillDataList(sel, dl_shop);
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        filldl();
    }
    protected void ddl_district_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillplace();
    }
    protected void dl_shop_ItemCommand(object source, DataListCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "tools")
        {
            Session["sid"] = id;
            Response.Redirect("ViewTools.aspx");
        }
        if (e.CommandName == "ingredients")
        {
            Session["sid"] = id;
            Response.Redirect("ViewIngredients.aspx");
        }
    }
}