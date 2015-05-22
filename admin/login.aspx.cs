using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_login : System.Web.UI.Page
{
    string strConn = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.SetFocus(inputEmail);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string userName = inputEmail.Text;
        string password = inputPassword.Text;
        string sql = String.Format("select count(*) from [gd_login] where name='{0}' and pwd='{1}'", userName, password);
        using (conn = new SqlConnection(strConn))
        {
            try
            {
                conn.Open();
                SqlCommand comm = new SqlCommand(sql, conn);
                int n = (int)comm.ExecuteScalar();
                if (n == 1)
                {
                    Response.Redirect("index.aspx");
                }
                else
                    Response.Write("<div style='text-align:center;'>登录失败</div>");

            }
            catch (Exception ex)
            {
                Response.Write("<div style='text-align:center;'>"+"登录失败:" + ex.Message+"</div>");
            }

        }

    }
}