using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_editCarsInfo : System.Web.UI.Page
{
    string strCon = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
    SqlConnection conn;
    SqlCommand comm;
    protected void Page_Load(object sender, EventArgs e)
    {

        Id.Text = Request.QueryString["Id"];
        int id = Convert.ToInt32(Request.QueryString["Id"]);
        string sql = String.Format("select * from gd_cars where Id='{0}'", id);
        using (conn = new SqlConnection(strCon))
        {
            conn.Open();
            comm = new SqlCommand(sql, conn);
            SqlDataReader reader = comm.ExecuteReader();
            try
            {
                if (reader.Read())
                {
                    Title.Text = reader.GetString(1);
                    Introduction.Text = reader.GetString(2);
                    Price.Text = reader.GetString(4);
                }
            }
            catch (System.Data.SqlTypes.SqlNullValueException ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {

            }
            reader.Close();
        }
    }
}