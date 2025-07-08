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
        filldetail();
    }
    public void filldetail()
    {
        string sel = "select * from tbl_deliveryboy db inner join tbl_place p on db.place_id=p.place_id inner join tbl_district d on p.district_id=d.district_id where deliveryboy_id='" + Session["dbid"] + "'";
        obj.FillDetailsView(sel, dv_deliveryboy);
    }
}