using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Default2 : System.Web.UI.Page
{
    bakers obj = new bakers();
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
    }
    public void fillgrid()
    {
        string sel = "select * from tbl_complainttype ct inner join tbl_complaint c  on c.complainttype_id=ct.complainttype_id inner join tbl_baker b on b.baker_id=c.baker_id where complaint_status=1 order by c.complaint_date,c.complaint_status ASC";
        obj.FillGridView(sel, grd_complaintb);
        string sel1 = "select * from tbl_complainttype ct inner join tbl_complaint c on c.complainttype_id=ct.complainttype_id inner join tbl_shop s on s.shop_id=c.shop_id where complaint_status=1 order by c.complaint_date,c.complaint_status ASC";
        obj.FillGridView(sel1, grd_complaints);
        string sel2 = "select * from tbl_complainttype ct inner join tbl_complaint c on c.complainttype_id=ct.complainttype_id inner join tbl_customer u on u.user_id=c.user_id where complaint_status=1 order by c.complaint_date,c.complaint_status ASC";
        obj.FillGridView(sel2, grd_complaintc);
    }
}