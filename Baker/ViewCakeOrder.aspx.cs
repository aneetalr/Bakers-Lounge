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
        string sel = "select * from tbl_cake c inner join tbl_cakebook cb on c.cake_id=cb.cake_id  inner join tbl_customer u on u.user_id=cb.user_id where c.baker_id='" + Session["bid"] + "' and cb.cakebook_cstatus=1 order by cb.cakebook_deliverydate ASC";
        obj.FillGridView(sel, grd_cakebook);
        string sel1 = "select * from tbl_cake c inner join tbl_cakebook cb on c.cake_id=cb.cake_id inner join tbl_customer u on u.user_id=cb.user_id where c.baker_id='" + Session["bid"] + "' and cb.cakebook_cstatus=2 and cb.cakebook_dstatus=0 order by cb.cakebook_deliverydate ASC";
        obj.FillGridView(sel1, grd_cakeaccept);
        string sel2 = "select * from tbl_cake c inner join tbl_cakebook cb on c.cake_id=cb.cake_id inner join tbl_customer u on u.user_id=cb.user_id where c.baker_id='" + Session["bid"] + "' and cb.cakebook_cstatus=3 order by cb.cakebook_deliverydate ASC";
        obj.FillGridView(sel2, grd_cakereject);
    }
    protected void grd_cakebook_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "accept")
        {
            string update = "update tbl_cakebook set cakebook_cstatus=2 where cakebook_id='" + id + "'";
            obj.ExecuteCommands(update);
            fillgrid();
        }
        if (e.CommandName == "del")
        {
            string del = "update tbl_cakebook set cakebook_cstatus=3 where cakebook_id='" + id + "'";
            obj.ExecuteCommands(del);
            fillgrid();
        }
    }
    protected void grd_cakeaccept_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "assign")
        {
            Session["cbid"] = id;
            Response.Redirect("AssignDBCake.aspx");
        }
        if (e.CommandName == "del")
        {
            string update1 = "update tbl_cakebook set cakebook_cstatus=3 where cakebook_id='" + id + "'";
            obj.ExecuteCommands(update1);
            fillgrid();
        }
    }
    protected void lnk_delete_Click(object sender, EventArgs e)
    {

    }
    protected void grd_cakeaccept_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        
    }
    protected void grd_cakeaccept_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");
            LinkButton deliveryLink = (LinkButton)e.Row.FindControl("LinkButton2");
            LinkButton deleteLink = (LinkButton)e.Row.FindControl("lnk_delete");
            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_cakebook Where cakebook_id='"+hid.Value+"'";
            DataTable dt = obj.GetDataTable(sel);
            if(dt.Rows.Count > 0)
            {
                status = Convert.ToInt32(dt.Rows[0]["cakebook_pstatus"]);
            }

            if (status == 0)
            {
                deliveryLink.Visible = false;
                lblMsg.Text = "Payement Pending";
                deleteLink.Visible = true;

            }
            else {
                deleteLink.Visible = false ;
                deliveryLink.Visible = true;
                
            }
        }
    }
    protected void grd_cakereject_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "retrieve")
        {
            string update1 = "update tbl_cakebook set cakebook_cstatus=1 where cakebook_id='" + id + "'";
            obj.ExecuteCommands(update1);
            fillgrid();
        }
    }
}