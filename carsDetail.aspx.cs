using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class carsDetail : System.Web.UI.Page
{
    string strCon = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
    SqlConnection conn;
    SqlCommand comm;
    int id=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        id =Convert.ToInt32(Request.QueryString["id"]);
        string sql = String.Format("select * from gd_cars where id='{0}'", id);
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
                    Content.Text = reader.GetString(3);
                    Price.Text = reader.GetString(4);
                    Time.Text = string.Format(reader.GetDateTime(5).ToString());
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
    protected void aliPayBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("./alipay/default.aspx?id="+id);
    }
}