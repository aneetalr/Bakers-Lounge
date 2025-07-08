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
        string sel1 = "select * from tbl_customer u inner join tbl_productbook pb on u.user_id=pb.user_id inner join tbl_product p on p.product_id=pb.product_id where p.baker_id='" + Session["bid"] + "' and pb.productbook_cstatus=1 order by pb.productbook_deliverydate ASC";
        obj.FillGridView(sel1, grd_productbook);
        string sel2 = "select * from tbl_customer u inner join tbl_productbook pb on u.user_id=pb.user_id inner join tbl_product p on p.product_id=pb.product_id where p.baker_id='" + Session["bid"] + "' and pb.productbook_cstatus=2 and pb.productbook_dstatus=0 order by pb.productbook_deliverydate ASC";
        obj.FillGridView(sel2, grd_productaccept);
        string sel3 = "select * from tbl_customer u inner join tbl_productbook pb on u.user_id=pb.user_id inner join tbl_product p on p.product_id=pb.product_id where p.baker_id='" + Session["bid"] + "' and pb.productbook_cstatus=3 order by pb.productbook_deliverydate ASC";
        obj.FillGridView(sel3, grd_productreject);
    }
    protected void grd_productbook_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "accept")
        {
            string update = "update tbl_productbook set productbook_cstatus=2 where productbook_id='" + id + "'";
            obj.ExecuteCommands(update);
            fillgrid();
        }
        if (e.CommandName == "del")
        {
            string del = "update tbl_productbook set productbook_cstatus=3 where productbook_id='" + id + "'";
            obj.ExecuteCommands(del);
            fillgrid();
        }
    }
    protected void grd_productaccept_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "assign")
        {
            Session["pbid"] = id;
            Response.Redirect("AssignDBProduct.aspx");
        }
        if (e.CommandName == "del")
        {
            string del = "update tbl_productbook set productbook_cstatus=3 where productbook_id='" + id + "'";
            obj.ExecuteCommands(del);
            fillgrid();
        }
    }
    protected void grd_productaccept_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");
            LinkButton deliveryLink = (LinkButton)e.Row.FindControl("LinkButton1");
            LinkButton deleteLink = (LinkButton)e.Row.FindControl("lnk_delete");
            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_productbook Where productbook_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                status = Convert.ToInt32(dt.Rows[0]["productbook_pstatus"]);
            }

            if (status == 0)
            {
                deliveryLink.Visible = false;
                lblMsg.Text = "Payement Pending";
                deleteLink.Visible = true;

            }
            else
            {
                deleteLink.Visible = false;
                deliveryLink.Visible = true;

            }
        }
    }
    protected void grd_productreject_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "retrieve")
        {
            string del = "update tbl_productbook set productbook_cstatus=1 where productbook_id='" + id + "'";
            obj.ExecuteCommands(del);
            fillgrid();
        }
    }
}