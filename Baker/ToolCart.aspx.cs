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
    int currentQty = 0, newQty = 0, totalAmount = 0, toolRate = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            filltooldetail();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ins="insert into tbl_toolbook(tool_id,toolbook_quantity,toolbook_totalamount,toolbook_date,toolbook_deliverydate,toolbook_deliveryaddr,toolbook_pstatus,toolbook_dstatus,toolbook_cstatus,baker_id) values('"+Session["tid"]+"','"+txt_qnty.Text+"','"+txt_amount.Text+"',0,0,0,0,0,0,'"+Session["bid"]+"')";
        obj.ExecuteCommands(ins);
        Response.Write("<script>alert('Added to cart')</script>");
        Response.Redirect("MyToolBookCart.aspx");
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        cartincrement();
    }
    protected void btn_reduce_Click(object sender, EventArgs e)
    {
        cartdecrement();
    }
    public void filltooldetail()
    {
        string sel = "select * from tbl_tool where tool_id='" + Session["tid"] + "'";
        DataTable dt = obj.GetDataTable(sel);
        lbl_name.Text = dt.Rows[0]["tool_name"].ToString();
        lbl_description.Text = dt.Rows[0]["tool_description"].ToString();
        lbl_price.Text = dt.Rows[0]["tool_price"].ToString();
        txt_qnty.Text = "1";
        txt_amount.Text = dt.Rows[0]["tool_price"].ToString();
    }
    public void cartincrement()
    {
        currentQty = Convert.ToInt32(txt_qnty.Text);
        toolRate = Convert.ToInt32(lbl_price.Text);
        newQty = currentQty + 1;
        totalAmount = toolRate * newQty;
        txt_qnty.Text = newQty.ToString();
        txt_amount.Text = totalAmount.ToString();
    }
    public void cartdecrement()
    {
        currentQty = Convert.ToInt32(txt_qnty.Text);
        toolRate = Convert.ToInt32(lbl_price.Text);
        newQty = currentQty - 1;
        totalAmount = toolRate * newQty;
        txt_qnty.Text = newQty.ToString();
        txt_amount.Text = totalAmount.ToString();
    }

}