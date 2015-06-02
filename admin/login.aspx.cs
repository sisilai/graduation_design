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
        this.SetFocus(inputName);
    }
    protected void loginBtn_Click(object sender, EventArgs e)
    {

        string userName = inputName.Text;
        string password = inputPassword.Text;
        //MD5加密
        System.Security.Cryptography.MD5CryptoServiceProvider md5CSP = new System.Security.Cryptography.MD5CryptoServiceProvider();
        byte[] testEncrypt = System.Text.Encoding.Unicode.GetBytes(password);
        byte[] resultEncrypt = md5CSP.ComputeHash(testEncrypt);
        string testResult = System.Text.Encoding.Unicode.GetString(resultEncrypt);
        string EncryptPWD = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(password, "MD5");

        string sql = String.Format("select count(*) from [gd_login] where name='{0}' and pwd='{1}'", userName, EncryptPWD);
        using (conn = new SqlConnection(strConn))
        {
            try
            {
                conn.Open();
                SqlCommand comm = new SqlCommand(sql, conn);
                int n = (int)comm.ExecuteScalar();
                if (n == 1)
                {
                    Session["userName"] = Request.Form["inputName"].ToString();
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