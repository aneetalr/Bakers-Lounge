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
    public int qnty;
    public int newqnty;
    protected void Page_Load(object sender, EventArgs e)
    {
        display();
    }
    protected void btn_book_Click(object sender, EventArgs e)
    {
        string update = "update tbl_toolbook set toolbook_deliveryaddr='" + txt_addr.Text + "',toolbook_date='" + DateTime.Now.ToShortDateString() + "',toolbook_cstatus=1 where toolbook_id='" + Session["tbid"] + "'";
        obj.ExecuteCommands(update);
        Response.Write("<script>alert('successfully booked')</script>");
        quantity();
        Response.Redirect("ToolBookStatus.aspx");
    }
    public void display()
    {
        string sel = "select * from tbl_tool t inner join tbl_toolbook tb on t.tool_id=tb.tool_id where toolbook_id='" + Session["tbid"] + "'";
        DataTable dt = obj.GetDataTable(sel);
        lbl_name.Text = dt.Rows[0]["tool_name"].ToString();
        lbl_qnty.Text = dt.Rows[0]["toolbook_quantity"].ToString();
        lbl_amount.Text = dt.Rows[0]["toolbook_totalamount"].ToString();
    }
    public void quantity()
    {
        string sel = "select * from tbl_toolstock tst inner join tbl_tool t on t.tool_id=tst.tool_id inner join tbl_toolbook tb on t.tool_id=tb.tool_id where toolbook_id='" + Session["tbid"] + "'";
        DataTable dt = obj.GetDataTable(sel);
        qnty = Convert.ToInt32(dt.Rows[0]["toolstock_quantity"].ToString());
        int id = Convert.ToInt32(dt.Rows[0]["tool_id"].ToString());
        newqnty = Convert.ToInt32(lbl_qnty.Text);

        int stock = qnty - newqnty;

        string update = "update tbl_ingredientstock set instock_quantity='" + stock + "' where ingredient_id='" + id + "'";
        obj.ExecuteCommands(update);
    }
}