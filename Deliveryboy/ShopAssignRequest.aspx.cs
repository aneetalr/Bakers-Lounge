using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Deliveryboy_Default : System.Web.UI.Page
{
    bakers obj = new bakers();
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
    }
    public void fillgrid()
    {
        string sel="select * from tbl_shop s inner join tbl_ingredient i on s.shop_id=i.shop_id inner join tbl_ingredientbook ib on i.ingredient_id=ib.ingredient_id inner join tbl_baker b on ib.baker_id=b.baker_id inner join tbl_assignsorder o on ib.inbook_id=o.inbook_id where o.deliveryboy_id='"+Session["dbid"]+"' and o.assignsorder_status=3";
        obj.FillGridView(sel,grd_in);
        string sel1 = "select * from tbl_shop s inner join tbl_tool t on s.shop_id=t.shop_id inner join tbl_toolbook tb on t.tool_id=tb.tool_id inner join tbl_baker b on tb.baker_id=b.baker_id inner join tbl_assignsorder o on tb.toolbook_id=o.toolbook_id where o.deliveryboy_id='" + Session["dbid"] + "' and o.assignsorder_status=3";
        obj.FillGridView(sel1,grd_tool);
    }
    
}