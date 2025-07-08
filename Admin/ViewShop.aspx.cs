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
    public static int status;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
        }
        
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_shop s inner join tbl_place p on s.place_id=p.place_id inner join tbl_district d on p.district_id=d.district_id where shop_status=1 order by shop_name ASC";
        obj.FillGridView(sel, grd_shop);
    }
    protected void grd_shop_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "del")
        {
            string update = "update tbl_shop set shop_status='2' where shop_id='" + id + "'";
            obj.ExecuteCommands(update);
            Response.Write("<script>alert('Rejected')</script>");
        }
        fillgrid();
    }
    protected void grd_shop_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        foreach (GridViewRow gr in grd_shop.Rows)
        {
            HiddenField hid = (HiddenField)gr.FindControl("HiddenField1");
            LinkButton deleteLink = (LinkButton)gr.FindControl("lnk_delete");
            Label lblMsg = (Label)gr.FindControl("lblMessage");
            int v = Convert.ToInt32(hid.Value);

            if (v == 0)
            {
                lblMsg.Text = "Payement Pending";
                deleteLink.Visible = true;
            }
            if (v == 1)
            {
                lblMsg.Text = "Payment Completed";
                deleteLink.Visible = false;
            }
        }
        
    }
 
}


