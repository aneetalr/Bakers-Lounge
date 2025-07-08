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
    public void fillgrid()
    {
        string sel = "select * from tbl_ingredientbook ib inner join tbl_ingredient i on ib.ingredient_id=i.ingredient_id where baker_id='" + Session["bid"] + "' and inbook_cstatus=0";
        obj.FillGridView(sel, grd_incart);
    }
    protected void grd_incart_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "book")
        {
            Session["ibid"] = id;
            Response.Redirect("InBook.aspx");
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_ingredientbook where inbook_id='" + id + "'";
            obj.ExecuteCommands(del);
        }
    }
    protected void grd_accept_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");
            LinkButton payLink = (LinkButton)e.Row.FindControl("lnk_payment");
            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_toolbook Where toolbook_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                status = Convert.ToInt32(dt.Rows[0]["toolbook_pstatus"]);
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