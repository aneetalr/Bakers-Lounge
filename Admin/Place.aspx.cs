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
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
        if (!IsPostBack)
        {
            filldistrict();
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_place(place_name,district_id) values('" + txt_place.Text + "','" + ddl_district.SelectedValue + "')";
        obj.ExecuteCommands(ins);
        Response.Write("<script>alert('Values successfully inserted')</script>");
        cancel();
        fillgrid();
    }
    public void cancel()
    {
        txt_place.Text = "";
        ddl_district.SelectedIndex = 0;
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_place p inner join tbl_district d on p.district_id=d.district_id order by d.district_name ASC";
        obj.FillGridView(sel, grd_place);
    }
    protected void grd_place_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
            if(e.CommandName=="del")
            {
        string delete = "delete from tbl_place where place_id='"+id+"'";
                obj.ExecuteCommands(delete);
            }
            fillgrid();
    }
    public void filldistrict()
    {
        obj.FillDrop(ddl_district, "district_name", "district_id", "tbl_district");
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        cancel();
    }
}