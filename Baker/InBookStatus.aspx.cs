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
    public static int status;
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "payment")
        {
            Session["ibid"] = id;
            Response.Redirect("PaymentIn.aspx");
        }
    }
    public void fillgrid()
    {
        string sel1 = "select * from tbl_shop s inner join tbl_ingredient i on s.shop_id=i.shop_id inner join tbl_ingredientbook ib on i.ingredient_id=ib.ingredient_id where ib.baker_id='" + Session["bid"] + "' and ib.inbook_cstatus=1";
        obj.FillGridView(sel1, grd_inorder);
        string sel2 = "select * from tbl_shop s inner join tbl_ingredient i on s.shop_id=i.shop_id inner join tbl_ingredientbook ib on i.ingredient_id=ib.ingredient_id where ib.baker_id='" + Session["bid"] + "' and ib.inbook_cstatus=2 and ib.inbook_dstatus=0";
        obj.FillGridView(sel2, grd_inaccept);
        string sel3 = "select * from tbl_shop s inner join tbl_ingredient i on s.shop_id=i.shop_id inner join tbl_ingredientbook ib on i.ingredient_id=ib.ingredient_id where ib.baker_id='" + Session["bid"] + "' and ib.inbook_cstatus=3";
        obj.FillGridView(sel3, grd_inreject);
    }

    protected void grd_inaccept_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");
            LinkButton payLink = (LinkButton)e.Row.FindControl("lnk_paymenta0");
            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_ingredientbook Where inbook_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                status = Convert.ToInt32(dt.Rows[0]["inbook_pstatus"]);
            }

            if (status == 0)
            {
                payLink.Visible = true;
            }
            else
            {
                lblMsg.Text = "Payement Completed";
                payLink.Visible = false;
            }
        }
    }
}