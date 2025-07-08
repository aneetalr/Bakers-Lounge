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
        string sel1 = "select * from tbl_shop s inner join tbl_tool t on s.shop_id=t.shop_id inner join tbl_toolbook tb on t.tool_id=tb.tool_id where tb.baker_id='" + Session["bid"] + "' and tb.toolbook_cstatus=1";
        obj.FillGridView(sel1, grd_order);
        string sel2 = "select * from tbl_shop s inner join tbl_tool t on s.shop_id=t.shop_id inner join tbl_toolbook tb on t.tool_id=tb.tool_id where tb.baker_id='" + Session["bid"] + "' and tb.toolbook_cstatus=2 and tb.toolbook_dstatus=0";
        obj.FillGridView(sel2, grd_accept);
        string sel3 = "select * from tbl_shop s inner join tbl_tool t on s.shop_id=t.shop_id inner join tbl_toolbook tb on t.tool_id=tb.tool_id where tb.baker_id='" + Session["bid"] + "' and tb.toolbook_cstatus=3";
        obj.FillGridView(sel3, grd_reject);
    }
    protected void grd_accept_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "payment")
        {
            Session["tbid"] = id;
            Response.Redirect("PaymentTool.aspx");
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