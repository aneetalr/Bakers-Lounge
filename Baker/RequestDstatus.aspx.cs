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
        string sel = "select * from tbl_baker b inner join tbl_cake c on b.baker_id=c.baker_id inner join tbl_cakebook cb on c.cake_id=cb.cake_id inner join tbl_customer u on u.user_id=cb.user_id inner join tbl_assignborder ao on cb.cakebook_id=ao.cakebook_id inner join tbl_deliveryboy d on d.deliveryboy_id=ao.deliveryboy_id where b.baker_id='" + Session["bid"] + "' order by cb.cakebook_deliverydate ASC";
        obj.FillGridView(sel, grd_cake);
        string sel1 = "select * from tbl_baker b inner join tbl_product p on b.baker_id=p.baker_id inner join tbl_productbook pb on p.product_id=pb.product_id inner join tbl_customer u on u.user_id=pb.user_id inner join tbl_assignborder ao on pb.productbook_id=ao.productbook_id inner join tbl_deliveryboy d on d.deliveryboy_id=ao.deliveryboy_id where b.baker_id='" + Session["bid"] + "' order by pb.productbook_deliverydate ASC";
        obj.FillGridView(sel1, grd_product);
        string sel2 = "select * from  tbl_customizecake cc inner join tbl_customer c on cc.user_id=c.user_id inner join tbl_flavour f on cc.flavour_id=f.flavour_id inner join tbl_assignborder ao on cc.ccake_id=ao.ccake_id inner join tbl_deliveryboy d on d.deliveryboy_id=ao.deliveryboy_id  where cc.baker_id='" + Session["bid"] + "' order by cc.ccake_deliverydate ASC";
        obj.FillGridView(sel2, grd_ccake);
    }
    protected void grd_cake_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");

            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_cakebook Where cakebook_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                status = Convert.ToInt32(dt.Rows[0]["cakebook_dstatus"]);
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

    protected void grd_product_RowDataBound(object sender, GridViewRowEventArgs e)
    {


        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");

            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_productbook Where productbook_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                status = Convert.ToInt32(dt.Rows[0]["productbook_dstatus"]);
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

    protected void grd_ccake_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
        HiddenField hid = (HiddenField)e.Row.FindControl("HiddenField1");

            Label lblMsg = (Label)e.Row.FindControl("lblMessage");
            string sel = "select * from tbl_customizecake Where ccake_id='" + hid.Value + "'";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                status = Convert.ToInt32(dt.Rows[0]["ccake_status"]);
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