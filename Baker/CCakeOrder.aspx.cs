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
        fillgrd();
    }
    public void fillgrd()
    {
        string sel = "select * from tbl_customizecake cc inner join tbl_customer c on cc.user_id=c.user_id inner join tbl_flavour f on cc.flavour_id=f.flavour_id where cc.ccake_status=0";
        obj.FillGridView(sel, GridView1);
        string sel1 = "select * from  tbl_customizecake cc inner join tbl_customer c on cc.user_id=c.user_id inner join tbl_flavour f on cc.flavour_id=f.flavour_id where cc.ccake_status=1 and cc.baker_id='" + Session["bid"] + "'";
        obj.FillGridView(sel1, GridView2);
        
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "accept")
        {
            string update = "update tbl_customizecake set ccake_status=1 where ccake_id='" + id + "'";
            obj.ExecuteCommands(update);
            string ins = "update tbl_customizecake set ccake_status=1,baker_id='" + Session["bid"] + "' where ccake_id='"+id+"'";
            obj.ExecuteCommands(ins);
            Session["ccid"] = id;
            Response.Redirect("CCakeAmount.aspx");
            fillgrd();
        }
        
    }
    protected void grd_accept_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "assign")
        {
            Session["ccid"] = id;
            Response.Redirect("AssignDBCCake.aspx");
        }
        if (e.CommandName == "del")
        {
            string del = "update tbl_customizecake set ccake_status=2 where ccake_id='" + id + "'";
            obj.ExecuteCommands(del);
            Response.Write("<script>alert('Rejected')</script>");
            fillgrd();
        }
    }
    
   
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");
            LinkButton deliveryLink = (LinkButton)e.Row.FindControl("lnk_accept");
            LinkButton deleteLink = (LinkButton)e.Row.FindControl("lnk_delete");
            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_customizecake Where ccake_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                status = Convert.ToInt32(dt.Rows[0]["ccake_pstatus"]);
            }

            if (status == 0)
            {
                deliveryLink.Visible = false;
                lblMsg.Text = "Payement Pending";
                deleteLink.Visible = true;

            }
            if (status == 1)
            {
                deleteLink.Visible = false;
                deliveryLink.Visible = true;

            }
        }
    }
}