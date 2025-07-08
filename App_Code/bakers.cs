using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for ArtCourse
/// </summary>
public class bakers
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-D7NBR34I;Initial Catalog=db_bakers;Integrated Security=True");

    public bakers()
    {
        con.Open();
        //
        // TODO: Add constructor logic here
        //
    }
    public void ExecuteCommands(string querystr)
    {
        SqlCommand cmd = new SqlCommand(querystr, con);
        cmd.ExecuteNonQuery();
    }
    public DataTable GetDataTable(string querystr)
    {
        SqlDataAdapter ada = new SqlDataAdapter(querystr, con);
        DataTable dt = new DataTable();
        ada.Fill(dt);
        return dt;
    }
    public void FillGridView(string querystr, GridView grid)
    {
        DataTable dt = GetDataTable(querystr);
        grid.DataSource = dt;
        grid.DataBind();
    }
    public void FillDataList(string querystr, DataList list)
    {
        DataTable dt = GetDataTable(querystr);
        list.DataSource = dt;
        list.DataBind();
    }
    public void FillDetailsView(string querystr, DetailsView list)
    {
        DataTable dt = GetDataTable(querystr);
        list.DataSource = dt;
        list.DataBind();
    }
    public void FillDrop(DropDownList drop, string display, string valfield, string tbl)
    {
        string str = "select " + display + "," + valfield + " from " + tbl + " order by "+display+" ASC";
        DataTable dt1 = GetDataTable(str);
        drop.DataSource = dt1;
        drop.DataTextField = display;
        drop.DataValueField = valfield;
        drop.DataBind();
        drop.Items.Insert(0, "---select---");

    }
    public void FillDrop(DropDownList ddl, string display, string valfield, string tbl, string condition1)
    {
        string str = "select " + display + "," + valfield + " from " + tbl + " where " + condition1 + "";
        DataTable dt1 = new DataTable();
        dt1 = GetDataTable(str);
        ddl.DataSource = dt1;
        ddl.DataTextField = display;
        ddl.DataValueField = valfield;
        ddl.DataBind();
        ddl.Items.Insert(0, "---select---");

    }
    public void FillCheck(CheckBoxList chk, string display, string valfield, string tbl)
    {
        string str = "select " + display + "," + valfield + " from " + tbl + "";
        DataTable dt1 = GetDataTable(str);
        chk.DataSource = dt1;
        chk.DataTextField = display;
        chk.DataValueField = valfield;
        chk.DataBind();
    }
    public void FillCheck(CheckBoxList chk, string display, string valfield, string tbl, string condition1)
    {
        string str = "select " + display + "," + valfield + " from " + tbl + " where " + condition1 + "";
        DataTable dt1 = new DataTable(str);
        chk.DataSource = dt1;
        chk.DataTextField = display;
        chk.DataValueField = valfield;
        chk.DataBind();
    }


    public void FillGridView(string sel, DetailsView dv)
    {
        throw new NotImplementedException();
    }

}