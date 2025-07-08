using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    bakers obj = new bakers();
    public static int id;
    public static int reply;
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_complainttype ct inner join tbl_complaint c  on c.complainttype_id=ct.complainttype_id inner join tbl_baker b on b.baker_id=c.baker_id where complaint_status=0 order by c.complaint_date,c.complaint_status ASC";
        obj.FillGridView(sel, grd_complaintb);
        string sel1 = "select * from tbl_complainttype ct inner join tbl_complaint c on c.complainttype_id=ct.complainttype_id inner join tbl_shop s on s.shop_id=c.shop_id where complaint_status=0 order by c.complaint_date,c.complaint_status ASC";
        obj.FillGridView(sel1, grd_complaints);
        string sel2 = "select * from tbl_complainttype ct inner join tbl_complaint c on c.complainttype_id=ct.complainttype_id inner join tbl_customer u on u.user_id=c.user_id where complaint_status=0 order by c.complaint_date,c.complaint_status ASC";
        obj.FillGridView(sel2, grd_complaintc);
    }
    protected void grd_complaint_RowCommand(object sender, GridViewCommandEventArgs e)
    {
         id = Convert.ToInt32(e.CommandArgument);
         if (e.CommandName == "reply")
         {
             Session["cmpid"]=id;
             Response.Redirect("ComplaintReply.aspx");
         }
    }
    protected void grd_complaint1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grd_complaintc_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grd_complaintc_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");
            LinkButton replyLink = (LinkButton)e.Row.FindControl("LinkButton5");
            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_complaint Where complaint_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                reply=Convert.ToInt32(dt.Rows[0]["complaint_status"]);
            }

            if (reply == 0)
            {
                replyLink.Visible = true;
            }
            if (reply == 1)
            {
                replyLink.Visible = false;
                lblMsg.Text = "Replied";
            }
        }
    }
    protected void grd_complaints_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");
            LinkButton replyLink = (LinkButton)e.Row.FindControl("LinkButton4");
            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_complaint Where complaint_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                reply = Convert.ToInt32(dt.Rows[0]["complaint_status"]);
            }

            if (reply == 0)
            {
                replyLink.Visible = true;
            }
            if (reply == 1)
            {
                replyLink.Visible = false;
                lblMsg.Text = "Replied";
            }
        }
    }
    protected void grd_complaintb_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");
            LinkButton replyLink = (LinkButton)e.Row.FindControl("LinkButton1");
            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_complaint Where complaint_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                reply = Convert.ToInt32(dt.Rows[0]["complaint_status"]);
            }

            if (reply == 0)
            {
                replyLink.Visible = true;
            }
            if (reply == 1)
            {
                replyLink.Visible = false;
                lblMsg.Text = "Replied";
            }
        }
    }
}