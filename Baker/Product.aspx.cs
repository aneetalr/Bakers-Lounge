using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Baker_Default : System.Web.UI.Page
{
    bakers obj = new bakers();
    public static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
        if (!IsPostBack)
        {
            filldrop();
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        string imagename = Path.GetFileName(file_image.PostedFile.FileName.ToString());
        file_image.SaveAs(Server.MapPath("../Assets/Product/" + imagename));

        string ins = "insert into tbl_product(product_name,product_description,product_weight,producttype_id,product_price,product_image,baker_id) values('" + txt_name.Text + "','" + txt_description.Text + "','" + txt_quantity.Text + "','" + ddl_type.SelectedValue + "','" + txt_price.Text + "','" + imagename + "','" + Session["bid"] + "')";
        obj.ExecuteCommands(ins);
        Response.Write("<script>alert('New product added')</script>");
        fillgrid();
        cancel();
    }
    public void filldrop()
    {
        obj.FillDrop(ddl_type, "producttype_name", "producttype_id", "tbl_producttype");
    }
    public void fillgrid()
    {
        string sel="select * from tbl_product p inner join tbl_producttype pt on p.producttype_id=pt.producttype_id  where baker_id='"+Session["bid"]+"'";
        obj.FillGridView(sel, grd_product);
    }
    protected void grd_product_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "gallery")
        {
            Session["pid"] = id;
            Response.Redirect("ProductGallery.aspx");
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_product where product_id='" + id + "'";
            obj.ExecuteCommands(del);
            string delete = "delete from tbl_gallery where product_id='" + id + "'";
            obj.ExecuteCommands(delete);
        }
        fillgrid();
    }
    public void cancel()
    {
        txt_name.Text = "";
        txt_description.Text = "";
        txt_quantity.Text = "";
        txt_price.Text = "";
        ddl_type.SelectedIndex=0;
    }
}