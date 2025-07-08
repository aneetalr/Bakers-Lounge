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
        file_image.SaveAs(Server.MapPath("../Assets/Cake/" + imagename));

        string ins = "insert into tbl_cake(cake_name,cake_description,cake_weight,caketype_id,cake_price,cake_image,baker_id) values('" + txt_name.Text + "','" + txt_description.Text + "','" + txt_quantity.Text + "','" + ddl_type.SelectedValue + "','" + txt_price.Text + "','" + imagename + "','" + Session["bid"] + "')";
        obj.ExecuteCommands(ins);
        Response.Write("<script>alert('New cake added')</script>");
        fillgrid();
        cancel();
    }
    public void filldrop()
    {
        obj.FillDrop(ddl_type, "caketype_name", "caketype_id", "tbl_caketype");
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_cake c inner join tbl_caketype ct on c.caketype_id=ct.caketype_id  where c.baker_id='" + Session["bid"] + "'";
        obj.FillGridView(sel, grd_cake);
    }
    protected void grd_cake_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "gallery")
        {
            Session["cakeid"] = id;
            Response.Redirect("CakeGallery.aspx");
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_cake where cake_id='" + id + "'";
            obj.ExecuteCommands(del);
            string delete = "delete from tbl_cakegallery where cake_id='" + id + "'";
            obj.ExecuteCommands(delete);
            fillgrid();
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