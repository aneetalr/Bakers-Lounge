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
        fillgrid();
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_complaint where baker_id='" + Session["bid"] + "' and complaint_status=1";
        obj.FillGridView(sel, grd_cmp);
        string sel1 = "select * from tbl_complaint where baker_id='" + Session["bid"] + "' and complaint_status=0";
        obj.FillGridView(sel1, grd_complaint);
    }
    protected void grd_cmp_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grd_cmp0_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "del")
        {
            string del = "delete from tbl_complaint where complaint_id='" + id + "'";
            obj.ExecuteCommands(del);
        }
    }
}