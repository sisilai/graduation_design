using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class onlineOrdering : System.Web.UI.Page
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
        gvCars.DataSource = myds;
        gvCars.DataKeyNames = new string[] { "id" };//主键
        gvCars.DataBind();
        sqlcon.Close();
    }
}