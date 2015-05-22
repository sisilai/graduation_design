using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_index : System.Web.UI.Page
{

    string strCon = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
    SqlConnection sqlcon;
    SqlCommand sqlcom;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }    
    public void bind()
    {
        string sqlstr = String.Format("select id,title,introduction,price,time from gd_cars order by id desc");
        sqlcon = new SqlConnection(strCon);
        SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
        DataSet myds = new DataSet();
        sqlcon.Open();
        myda.Fill(myds, "gd_cars");
        GridView1.DataSource = myds;
        GridView1.DataKeyNames = new string[] { "id" };//主键
        GridView1.DataBind();
        sqlcon.Close();
    }
    //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    //{
    //    GridView1.EditIndex = e.NewEditIndex;
    //    bind();
    //}
    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    string sqlstr = "delete from gd_cars where Id='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
    //    sqlcon = new SqlConnection(strCon);
    //    sqlcom = new SqlCommand(sqlstr, sqlcon);
    //    sqlcon.Open();
    //    sqlcom.ExecuteNonQuery();
    //    sqlcon.Close();
    //    bind();
    //}
    //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //{
    //    sqlcon = new SqlConnection(strCon);
    //    string sqlstr = "update gd_cars set XingMing='"
    //        + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim() + "',ShenFenZheng='"
    //        + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim() + "',ShouJiHao='"
    //        + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim() + "' where Id='"
    //        + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
    //    sqlcom = new SqlCommand(sqlstr, sqlcon);
    //    sqlcon.Open();
    //    sqlcom.ExecuteNonQuery();
    //    sqlcon.Close();
    //    GridView1.EditIndex = -1;
    //    bind();
    //}
    //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    //{
    //    GridView1.EditIndex = -1;
    //    bind();
    //}

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        string strSql = "delete from gd_cars where id = @id";
        SqlConnection cn = new SqlConnection(strCon);
        SqlCommand cmd = new SqlCommand(strSql, cn);
        cmd.Parameters.Add("@id", SqlDbType.VarChar, 11).Value = GridView1.DataKeys[e.RowIndex].Value.ToString();
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("index.aspx");
    }
}