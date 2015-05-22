using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_updateCarsPreview : System.Web.UI.Page
{
    string strConn = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
    string title = null;
    string introduction = null;
    float price = 0;
    string content = null;
    string time = null;
    int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        title = Request.Form["title"].ToString();
        id =int.Parse(Request.Form["id"].ToString());
        introduction = Request.Form["introduction"].ToString();
        price = float.Parse(Request.Form["price"].ToString());
        content = Request.Form["content"].ToString();
        time = DateTime.Now.ToLocalTime().ToString();
        Response.Write("<h3>发布预览</h3>" + "</br>");
        Response.Write("车名：" + title + "</br>");
        Response.Write("简介：" + introduction + "</br>");
        Response.Write("价格：" + price + "万元</br>");
        Response.Write("内容：" + content + "</br>");
        Response.Write("时间：" + time + "</br>");
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(strConn);
        string sql = String.Format("update gd_cars set title='{0}',introduction='{1}',content='{2}',price='{3}',time='{4}' where id='{5}'",
            title, introduction, content, price, time,id);
        try
        {
            conn.Open();
            System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand(sql, conn);
            int n = (int)comm.ExecuteNonQuery();
            if (n == 1)
            {
                Response.Write("<script languge='javascript'>alert('修改成功');window.location.href='index.aspx';</script>");
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