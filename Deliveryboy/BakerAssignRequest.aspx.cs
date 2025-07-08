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
    public static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_baker b inner join tbl_cake c on b.baker_id=c.baker_id inner join tbl_cakebook cb on c.cake_id=cb.cake_id inner join tbl_customer u on u.user_id=cb.user_id inner join tbl_assignborder ao on cb.cakebook_id=ao.cakebook_id where ao.deliveryboy_id='" + Session["dbid"] + "' and ao.assignborder_status=3";
        obj.FillGridView(sel, grd_cake);
        string sel1 = "select * from tbl_baker b inner join tbl_product p on b.baker_id=p.baker_id inner join tbl_productbook pb on p.product_id=pb.product_id inner join tbl_customer u on u.user_id=pb.user_id inner join tbl_assignborder ao on pb.productbook_id=ao.productbook_id where ao.deliveryboy_id='" + Session["dbid"] + "' and ao.assignborder_status=3";
        obj.FillGridView(sel1, grd_product);
        string sel2 = "select * from tbl_customizecake cc inner join tbl_baker  b on cc.baker_id=b.baker_id inner join tbl_flavour f on f.flavour_id=cc.flavour_id inner join tbl_customer c on cc.user_id=c.user_id inner join tbl_assignborder ao on ao.ccake_id=cc.ccake_id where ao.deliveryboy_id='" + Session["dbid"] + "' and ao.assignborder_status=3";
        obj.FillGridView(sel2, grd_ccake);
    }
    
}