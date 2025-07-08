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
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        string imagename = Path.GetFileName(file_image.PostedFile.FileName.ToString());
        file_image.SaveAs(Server.MapPath("../Assets/CakeGallery/" + imagename));

        string ins = "insert into tbl_cakegallery(cake_id,cakegallery_image) values('" + Session["cakeid"] + "','" + imagename + "')";
        obj.ExecuteCommands(ins);
        Response.Write("<script>alert('Picture successfully inserted')</script>");
        fillgrid();
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_cakegallery where cake_id='" + Session["cakeid"] + "'";
        obj.FillGridView(sel, grd_gallery);
    }
    protected void grd_gallery_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "del")
        {
            string delete = "delete from tbl_cakegallery where cakegallery_id='" + id + "'";
            obj.ExecuteCommands(delete);
            fillgrid();
        }
    }

    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cake.aspx");
    }
}