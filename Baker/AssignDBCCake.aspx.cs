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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            filldistrict();
        }
    }
    public void filldistrict()
    {
        obj.FillDrop(ddl_district, "district_name", "district_id", "tbl_district");
    }
    public void fillplace()
    {
        obj.FillDrop(ddl_place, "place_name", "place_id", "tbl_place", "district_id='" + ddl_district.SelectedValue + "'");
    }
    public void fillgrd()
    {
        string sel = "select * from tbl_deliveryboy where place_id='" + ddl_place.SelectedValue + "' and deliveryboy_status='" + 1 + "'";
        obj.FillGridView(sel, grd_deliveryboy);
    }
    protected void grd_deliveryboy_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "assign")
        {
            string ins = "insert into tbl_assignborder(assignborder_date,assignborder_status,ccake_id,deliveryboy_id) values('" + DateTime.Now.ToShortDateString() + "',0,'" + Session["ccid"] + "','" + id + "')";
            obj.ExecuteCommands(ins);
            string update = "update tbl_customizecake set ccake_dstatus=1 where ccake_id='" + Session["ccid"] + "'";
            obj.ExecuteCommands(update);
            Response.Write("<script>alert('Assigned')</script>");
            Response.Redirect("RequestDStatus.aspx");
        }
    }
    protected void ddl_district_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillplace();
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        fillgrd();
    }
}