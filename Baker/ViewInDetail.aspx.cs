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
        filldv();
        fillgallery();
    }
    public void filldv()
    {
        string sel = "select * from tbl_ingredient where ingredient_id='" + Session["inid"] + "'";
        obj.FillDetailsView(sel, dv_ingredients);
    }
    public void fillgallery()
    {
        string select = "select * from tbl_ingredient i inner join tbl_ingredientgallery g on i.ingredient_id=g.ingredient_id where i.ingredient_id='" + Session["inid"] + "'";
        obj.FillGridView(select, grd_gallery);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void dv_ingredients_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "cart")
        {
            Session["inid"] = id;
            Response.Redirect("InCart.aspx");
        }
    }
}