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
    protected void Button1_Click(object sender, EventArgs e)
    {

        string userName = inputName.Text;
        string password = inputPassword.Text;
        //欲进行md5加密的字符串
        //string test = "123abc";

        //获取加密服务
        System.Security.Cryptography.MD5CryptoServiceProvider md5CSP = new System.Security.Cryptography.MD5CryptoServiceProvider();

        //获取要加密的字段，并转化为Byte[]数组
        byte[] testEncrypt = System.Text.Encoding.Unicode.GetBytes(password);

        //加密Byte[]数组
        byte[] resultEncrypt = md5CSP.ComputeHash(testEncrypt);

        //将加密后的数组转化为字段(普通加密)
        string testResult = System.Text.Encoding.Unicode.GetString(resultEncrypt);

        //作为密码方式加密
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