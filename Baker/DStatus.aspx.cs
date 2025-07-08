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
        string sel = "select * from tbl_shop s inner join tbl_ingredient i on s.shop_id=i.shop_id inner join tbl_ingredientbook ib on i.ingredient_id=ib.ingredient_id inner join tbl_assignsorder o on ib.inbook_id=o.inbook_id inner join tbl_deliveryboy d on d.deliveryboy_id=o.deliveryboy_id where ib.baker_id='" + Session["bid"] + "' order by o.assignsorder_date ASC";
        obj.FillGridView(sel, grd_in);
        string sel1 = "select * from tbl_shop s inner join tbl_tool t on s.shop_id=t.shop_id inner join tbl_toolbook tb on t.tool_id=tb.tool_id inner join tbl_assignsorder o on tb.toolbook_id=o.toolbook_id  inner join tbl_deliveryboy d on d.deliveryboy_id=o.deliveryboy_id where tb.baker_id='" + Session["bid"] + "' order by o.assignsorder_date ASC";
        obj.FillGridView(sel1, grd_tool);
    }
    protected void grd_in_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");
            
            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_ingredientbook Where inbook_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                status = Convert.ToInt32(dt.Rows[0]["inbook_dstatus"]);
            }

            if (status == 1)
            {
                
                lblMsg.Text = "Delivery Pending";

            }
            if (status == 2)
            {

                lblMsg.Text = "Order Picked";
            }
            if (status == 3)
            {

                lblMsg.Text = "Out for Delivery";
            }
            if (status == 4)
            {

                lblMsg.Text = "Delivery Completed";
            }
        }
    }
    protected void grd_tool_RowDataBound(object sender, GridViewRowEventArgs e)
    {


        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");

            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_toolbook Where toolbook_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                status = Convert.ToInt32(dt.Rows[0]["toolbook_dstatus"]);
            }

            if (status == 1)
            {

                lblMsg.Text = "Delivery Pending";

            }
            if (status == 2)
            {

                lblMsg.Text = "Order Picked";
            }
            if (status == 3)
            {

                lblMsg.Text = "Out for Delivery";
            }
            if (status == 4)
            {

                lblMsg.Text = "Delivery Completed";
            }
        }
    }
}