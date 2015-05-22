using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_updateNewsPreview : System.Web.UI.Page
{
    string strConn = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
    string title = null;
    string content = null;
    string time = null;
    int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        title = Request.Form["title"].ToString();
        id =int.Parse(Request.Form["id"].ToString());
        content = Request.Form["content"].ToString();
        time = DateTime.Now.ToLocalTime().ToString();
        Response.Write("<h3>发布预览</h3>" + "</br>");
        Response.Write("标题：" + title + "</br>");
        Response.Write("内容：" + content + "</br>");
        Response.Write("时间：" + time + "</br>");
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(strConn);
        string sql = String.Format("update gd_news set title='{0}',content='{1}',time='{2}' where id='{3}'",
            title, content, time, id);
        try
        {
            conn.Open();
            System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand(sql, conn);
            int n = (int)comm.ExecuteNonQuery();
            if (n == 1)
            {
                Response.Write("<script languge='javascript'>alert('修改成功');window.location.href='news.aspx';</script>");
            }
            else
                Response.Write("修改失败");
        }
        catch (Exception e1)
        {
            Response.Write(e1.ToString());
        }
    }
}