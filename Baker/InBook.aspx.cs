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
        string update = "update tbl_ingredientbook set inbook_deliveryaddr='" + txt_addr.Text + "',inbook_cstatus=1,inbook_date='" + DateTime.Now.ToShortDateString() + "' where inbook_id='" + Session["ibid"] + "'";
        obj.ExecuteCommands(update);
        Response.Write("<script>alert('Successfully booked')</script>");
        quantity();
        Response.Redirect("InBookStatus.aspx");
    }
    public void display()
    {
        string sel = "select * from tbl_ingredient i inner join tbl_ingredientbook ib on i.ingredient_id=ib.ingredient_id where inbook_id='" + Session["ibid"] + "'";
        DataTable dt = obj.GetDataTable(sel);
        lbl_name.Text = dt.Rows[0]["ingredient_name"].ToString();
        lbl_weight.Text = dt.Rows[0]["ingredient_weight"].ToString();
        lbl_qnty.Text = dt.Rows[0]["inbook_quantity"].ToString();
        lbl_amount.Text = dt.Rows[0]["inbook_totalamount"].ToString();
    }
    public void quantity()
    {
        string sel = "select * from tbl_ingredientstock ist inner join tbl_ingredient i on i.ingredient_id=ist.ingredient_id inner join tbl_ingredientbook ib on i.ingredient_id=ib.ingredient_id where inbook_id='" + Session["ibid"] + "'";
            DataTable dt=obj.GetDataTable(sel);
        qnty=Convert.ToInt32(dt.Rows[0]["instock_quantity"].ToString());
        int id = Convert.ToInt32(dt.Rows[0]["ingredient_id"].ToString());
        newqnty=Convert.ToInt32(lbl_qnty.Text);

        int stock=qnty-newqnty;

        string update = "update tbl_ingredientstock set instock_quantity='" + stock + "' where ingredient_id='" + id + "'";
        obj.ExecuteCommands(update);
    }
}