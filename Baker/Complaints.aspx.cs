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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillddl();
        }
    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        string ins = "insert into tbl_complaint (complainttype_id,complaint_title,complaint_data,complaint_date,complaint_status,baker_id) values('" + ddl_type.SelectedValue + "','" + txt_title.Text + "','" + txt_cmplt.Text + "','" + DateTime.Now.ToShortDateString() + "',0,'" + Session["bid"] + "')";
        obj.ExecuteCommands(ins);
        Response.Write("<script>alert('Complaint send')</script>");
        Response.Redirect("ViewComplaintStatus.aspx");
    }
    public void fillddl()
    {
        obj.FillDrop(ddl_type, "complainttype_name", "complainttype_id", "tbl_complainttype");
    }
    public void cancel()
    {
        txt_title.Text = "";
        txt_cmplt.Text = "";
        ddl_type.ClearSelection();
    }
}