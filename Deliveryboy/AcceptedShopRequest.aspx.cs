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
        string sel = "select * from tbl_shop s inner join tbl_ingredient i on s.shop_id=i.shop_id inner join tbl_ingredientbook ib on i.ingredient_id=ib.ingredient_id inner join tbl_assignsorder o on ib.inbook_id=o.inbook_id  inner join tbl_baker b on b.baker_id=ib.baker_id where o.deliveryboy_id='" + Session["dbid"] + "'  and o.assignsorder_status!=3";
        obj.FillGridView(sel, grd_in);
        string sel1 = "select * from tbl_shop s inner join tbl_tool t on s.shop_id=t.shop_id inner join tbl_toolbook tb on t.tool_id=tb.tool_id inner join tbl_assignsorder o on tb.toolbook_id=o.toolbook_id  inner join tbl_baker b on b.baker_id=tb.baker_id where o.deliveryboy_id='" + Session["dbid"] + "' and o.assignsorder_status!=3";
        obj.FillGridView(sel1, grd_tool);
    }
    protected void grd_in_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "picked")
        {
            string update = "update tbl_assignsorder set assignsorder_status=1 where inbook_id='" + id + "'";
            obj.ExecuteCommands(update);
            string update1 = "update tbl_ingredientbook set inbook_dstatus=2 where inbook_id='" + id + "'";
            obj.ExecuteCommands(update1);
            Response.Write("<script>alert('Updated successfully')</script>");
            fillgrid();
        }
        if (e.CommandName == "out")
        {
            string update = "update tbl_assignsorder set assignsorder_status=2 where inbook_id='" + id + "'";
            obj.ExecuteCommands(update);
            string update1 = "update tbl_ingredientbook set inbook_dstatus=3 where inbook_id='" + id + "'";
            obj.ExecuteCommands(update1);
            Response.Write("<script>alert('Updated successfully')</script>");
            fillgrid();
        }
        if (e.CommandName == "delivery")
        {
            string update = "update tbl_assignsorder set assignsorder_status=3 where inbook_id='" + id + "'";
            obj.ExecuteCommands(update);
            string update1 = "update tbl_ingredientbook set inbook_dstatus=4 where inbook_id='" + id + "'";
            obj.ExecuteCommands(update1);
            Response.Write("<script>alert('Updated successfully')</script>");
            fillgrid();
        }
    }
    protected void grd_tool_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "picked")
        {
            string update = "update tbl_assignsorder set assignsorder_status=1 where toolbook_id='" + id + "'";
            obj.ExecuteCommands(update);
            string update1 = "update tbl_toolbook set toolbook_dstatus=2 where toolbook_id='" + id + "'";
            obj.ExecuteCommands(update1);
            Response.Write("<script>alert('Updated successfully')</script>");
            fillgrid();
        }
        if (e.CommandName == "out")
        {
            string update = "update tbl_assignsorder set assignsorder_status=2 where toolbook_id='" + id + "'";
            obj.ExecuteCommands(update);
            string update1 = "update tbl_toolbook set toolbook_dstatus=3 where toolbook_id='" + id + "'";
            obj.ExecuteCommands(update1);
            Response.Write("<script>alert('Updated successfully')</script>");
            fillgrid();
        }
        if (e.CommandName == "delivery")
        {
            string update = "update tbl_assignsorder set assignsorder_status=3 where toolbook_id='" + id + "'";
            obj.ExecuteCommands(update);
            string update1 = "update tbl_toolbook set toolbook_dstatus=4 where toolbook_id='" + id + "'";
            obj.ExecuteCommands(update1);
            Response.Write("<script>alert('Updated successfully')</script>");
            fillgrid();
        }
    }
    protected void grd_in_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");
            LinkButton Picked = (LinkButton)e.Row.FindControl("LinkButton4");
            LinkButton outd = (LinkButton)e.Row.FindControl("LinkButton3");
            LinkButton delivery = (LinkButton)e.Row.FindControl("LinkButton1");
            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_ingredientbook Where inbook_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                status = Convert.ToInt32(dt.Rows[0]["inbook_dstatus"]);
            }

            if (status == 1)
            {
                lblMsg.Text = "Pending";
                Picked.Visible = true;
                outd.Visible = false;
                delivery.Visible = false;
            }
            if(status == 2)
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
    protected void grd_tool_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField2");
            LinkButton Picked = (LinkButton)e.Row.FindControl("LinkButton4");
            LinkButton outd = (LinkButton)e.Row.FindControl("LinkButton3");
            LinkButton delivery = (LinkButton)e.Row.FindControl("LinkButton2");
            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_toolbook Where toolbook_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                status = Convert.ToInt32(dt.Rows[0]["toolbook_dstatus"]);
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