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
    int currentQty = 0, newQty = 0, totalAmount = 0, inRate = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
    {
        fillindetails();
    }
    }
    public void fillindetails()
    {
        string sel = "select * from tbl_ingredient where ingredient_id='" + Session["inid"] + "'";
        DataTable dt = obj.GetDataTable(sel);
        lbl_name.Text = dt.Rows[0]["ingredient_name"].ToString();
        lbl_description.Text = dt.Rows[0]["ingredient_description"].ToString();
        lbl_weight.Text = dt.Rows[0]["ingredient_weight"].ToString();
        lbl_expiry.Text = dt.Rows[0]["ingredient_expiry"].ToString();
        lbl_price.Text = dt.Rows[0]["ingredient_price"].ToString();
        txt_qnty.Text = "1";
        txt_amount.Text = dt.Rows[0]["ingredient_price"].ToString();
    }
    public void cartincrement()
    {
        currentQty = Convert.ToInt32(txt_qnty.Text);
        inRate=Convert.ToInt32(lbl_price.Text);
        newQty = currentQty + 1;
        totalAmount = inRate * newQty;
        txt_qnty.Text = newQty.ToString();
        txt_amount.Text = totalAmount.ToString();
    }
    protected void btn_plus_Click(object sender, EventArgs e)
    {
        cartincrement();
    }
    public void cartdecrement()
    {
        currentQty = Convert.ToInt32(txt_qnty.Text);
        inRate = Convert.ToInt32(lbl_price.Text);
        newQty = currentQty - 1;
        totalAmount = inRate * newQty;
        txt_qnty.Text = newQty.ToString();
        txt_amount.Text = totalAmount.ToString();
    }
    protected void btn_minus_Click(object sender, EventArgs e)
    {
        cartdecrement();
    }
    protected void btn_cart_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_ingredientbook(ingredient_id,inbook_quantity,inbook_totalamount,inbook_date,inbook_deliverydate,inbook_deliveryaddr,inbook_pstatus,inbook_dstatus,inbook_cstatus,baker_id) values('" + Session["inid"] + "','" + txt_qnty.Text + "','" + txt_amount.Text + "',0,0,0,0,0,0,'" + Session["bid"] + "')";
        obj.ExecuteCommands(ins);
        Response.Write("<script>alert('Added to cart')</script>");
        Response.Redirect("MyInBookCart.aspx");
    }

}