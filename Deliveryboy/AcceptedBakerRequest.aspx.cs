using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Deliveryboy_Default : System.Web.UI.Page
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
        string sel = "select * from tbl_baker b inner join tbl_cake c on b.baker_id=c.baker_id inner join tbl_cakebook cb on c.cake_id=cb.cake_id inner join tbl_customer u on u.user_id=cb.user_id inner join tbl_assignborder ao on cb.cakebook_id=ao.cakebook_id where ao.deliveryboy_id='" + Session["dbid"] + "' and ao.assignborder_status!=3";
        obj.FillGridView(sel, grd_cake);
        string sel1 = "select * from tbl_baker b inner join tbl_product p on b.baker_id=p.baker_id inner join tbl_productbook pb on p.product_id=pb.product_id inner join tbl_customer u on u.user_id=pb.user_id inner join tbl_assignborder ao on pb.productbook_id=ao.productbook_id where ao.deliveryboy_id='" + Session["dbid"] + "'  and ao.assignborder_status!=3";
        obj.FillGridView(sel1, grd_product);
        string sel2 = "select * from tbl_customizecake cc inner join tbl_baker  b on cc.baker_id=b.baker_id inner join tbl_flavour f on f.flavour_id=cc.flavour_id inner join tbl_customer c on cc.user_id=c.user_id inner join tbl_assignborder ao on ao.ccake_id=cc.ccake_id where ao.deliveryboy_id='"+Session["dbid"]+"' and ao.assignborder_status!=3";
        obj.FillGridView(sel2, grd_ccake);
    }
    protected void grd_cake_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "picked")
        {
            string update = "update tbl_assignborder set assignborder_status=1 where cakebook_id='" + id + "'";
            obj.ExecuteCommands(update);
            string update1 = "update tbl_cakebook set cakebook_dstatus=2 where cakebook_id='" + id + "'";
            obj.ExecuteCommands(update1);
            Response.Write("<script>alert('Updated successfully')</script>");
            fillgrid();
        }
        if (e.CommandName == "out")
        {
            string update = "update tbl_assignborder set assignborder_status=2 where cakebook_id='" + id + "'";
            obj.ExecuteCommands(update);
            string update1 = "update tbl_cakebook set cakebook_dstatus=3 where cakebook_id='" + id + "'";
            obj.ExecuteCommands(update1);
            Response.Write("<script>alert('Updated successfully')</script>");
            fillgrid();
        }
        if (e.CommandName == "delivery")
        {
            string update = "update tbl_assignborder set assignborder_status=3 where cakebook_id='" + id + "'";
            obj.ExecuteCommands(update);
            string update1 = "update tbl_cakebook set cakebook_dstatus=4 where cakebook_id='" + id + "'";
            obj.ExecuteCommands(update1);
            Response.Write("<script>alert('Updated successfully')</script>");
            fillgrid();
        }
    }
    protected void grd_product_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "picked")
        {
            string update = "update tbl_assignborder set assignborder_status=1 where productbook_id='" + id + "'";
            obj.ExecuteCommands(update);
            string update1 = "update tbl_productbook set productbook_dstatus=2 where productbook_id='" + id + "'";
            obj.ExecuteCommands(update1);
            Response.Write("<script>alert('Updated successfully')</script>");
            fillgrid();
        }
        if (e.CommandName == "out")
        {
            string update = "update tbl_assignborder set assignborder_status=2 where productbook_id='" + id + "'";
            obj.ExecuteCommands(update);
            string update1 = "update tbl_productbook set productbook_dstatus=3 where productbook_id='" + id + "'";
            obj.ExecuteCommands(update1);
            Response.Write("<script>alert('Updated successfully')</script>");
            fillgrid();
        }
        if (e.CommandName == "delivery")
        {
            string update = "update tbl_assignborder set assignborder_status=3 where productbook_id='" + id + "'";
            obj.ExecuteCommands(update);
            string update1 = "update tbl_productbook set productbook_dstatus=4 where productbook_id='" + id + "'";
            obj.ExecuteCommands(update1);
            Response.Write("<script>alert('Updated successfully')</script>");
            fillgrid();
        }
    }
    protected void grd_product_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");
            LinkButton Picked = (LinkButton)e.Row.FindControl("LinkButton5");
            LinkButton outd = (LinkButton)e.Row.FindControl("LinkButton3");
            LinkButton delivery = (LinkButton)e.Row.FindControl("LinkButton2");
            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_productbook Where productbook_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                status = Convert.ToInt32(dt.Rows[0]["productbook_dstatus"]);
            }

            if (status == 1)
            {
                lblMsg.Text = "Pending";
                Picked.Visible = true;
                outd.Visible = false;
                delivery.Visible = false;
            }
            if (status == 2)
            {
                lblMsg.Text = "Picked";
                Picked.Visible = false;
                outd.Visible = true;
                delivery.Visible = false;
            }
            if (status == 3)
            {
                lblMsg.Text = "Out for delivery";
                Picked.Visible = false;
                outd.Visible = false;
                delivery.Visible = true;
            }
        }
    }
    protected void grd_cake_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");
            LinkButton Picked = (LinkButton)e.Row.FindControl("LinkButton4");
            LinkButton outd = (LinkButton)e.Row.FindControl("LinkButton3");
            LinkButton delivery = (LinkButton)e.Row.FindControl("LinkButton1");
            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_cakebook Where cakebook_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                status = Convert.ToInt32(dt.Rows[0]["cakebook_dstatus"]);
            }

            if (status == 1)
            {
                lblMsg.Text = "Pending";
                Picked.Visible = true;
                outd.Visible = false;
                delivery.Visible = false;
            }
            if (status == 2)
            {
                lblMsg.Text = "Picked";
                Picked.Visible = false;
                outd.Visible = true;
                delivery.Visible = false;
            }
            if (status == 3)
            {
                lblMsg.Text = "Out for delivery";
                Picked.Visible = false;
                outd.Visible = false;
                delivery.Visible = true;
            }
        }
    }
    protected void grd_ccake_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "picked")
        {
            string update = "update tbl_assignborder set assignborder_status=1 where ccake_id='" + id + "'";
            obj.ExecuteCommands(update);
            string update1 = "update tbl_customizecake set ccake_status=2 where ccake_id='" + id + "'";
            obj.ExecuteCommands(update1);
            Response.Write("<script>alert('Updated successfully')</script>");
            fillgrid();
        }
        if (e.CommandName == "out")
        {
            string update = "update tbl_assignborder set assignborder_status=2 where ccake_id='" + id + "'";
            obj.ExecuteCommands(update);
            string update1 = "update tbl_customizecake set ccake_status=3 where ccake_id='" + id + "'";
            obj.ExecuteCommands(update1);
            Response.Write("<script>alert('Updated successfully')</script>");
            fillgrid();
        }
        if (e.CommandName == "delivery")
        {
            string update = "update tbl_assignborder set assignborder_status=3 where ccake_id='" + id + "'";
            obj.ExecuteCommands(update);
            string update1 = "update tbl_customizecake set ccake_status=4 where ccake_id='" + id + "'";
            obj.ExecuteCommands(update1);
            Response.Write("<script>alert('Updated successfully')</script>");
            fillgrid();
        }
    }
    protected void grd_ccake_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
        
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");
            LinkButton Picked = (LinkButton)e.Row.FindControl("LinkButton5");
            LinkButton outd = (LinkButton)e.Row.FindControl("LinkButton3");
            LinkButton delivery = (LinkButton)e.Row.FindControl("LinkButton2");
            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_customizecake Where ccake_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                status = Convert.ToInt32(dt.Rows[0]["ccake_status"]);
            }

            if (status == 1)
            {
                lblMsg.Text = "Pending";
                Picked.Visible = true;
                outd.Visible = false;
                delivery.Visible = false;
            }
            if (status == 2)
            {
                lblMsg.Text = "Picked";
                Picked.Visible = false;
                outd.Visible = true;
                delivery.Visible = false;
            }
            if (status == 3)
            {
                lblMsg.Text = "Out for delivery";
                Picked.Visible = false;
                outd.Visible = false;
                delivery.Visible = true;
            }
        }
    }
}