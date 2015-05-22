using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newsDetail : System.Web.UI.Page
{
    string strCon = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
    SqlConnection conn;
    SqlCommand comm;
    protected void Page_Load(object sender, EventArgs e)
    {
        int id =Convert.ToInt32(Request.QueryString["id"]);
        string sql = String.Format("select * from gd_news where id='{0}'", id);
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
                    Content.Text = reader.GetString(2);
                    Time.Text = string.Format(reader.GetDateTime(3).ToString());
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