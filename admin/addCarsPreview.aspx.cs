using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_addCarsPreview : System.Web.UI.Page
{
    string strConn = ConfigurationManager.ConnectionStrings["DatabaseConnection"].ConnectionString;
    string title=null;
    string introduction=null;
    float price=0;
    string content=null;
    string time=null;
    protected void Page_Load(object sender, EventArgs e)
    {
        title = Request.Form["title"].ToString();
        introduction = Request.Form["introduction"].ToString();
        price = float.Parse(Request.Form["price"].ToString());
        content = Request.Form["content"].ToString();
        time = DateTime.Now.ToLocalTime().ToString();
        Response.Write("<h5>发布预览</h5>" + "</br>");
        Response.Write("车名："+title + "</br>");
        Response.Write("简介："+introduction + "</br>");
        Response.Write("价格："+price + "万元</br>");
        Response.Write("内容："+content + "</br>");
        Response.Write("时间："+time + "</br>");
        SqlConnection conn = new System.Data.SqlClient.SqlConnection(strConn);
        string sql = String.Format("insert into [gd_cars](title,introduction,content,price,time) values('{0}','{1}','{2}','{3}','{4}')",
            title, introduction, content, price, time);
        try
        {
            conn.Open();
            System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand(sql, conn);
            int n = (int)comm.ExecuteNonQuery();
            if (n == 1)
            {
                Response.Write("<script languge='javascript'>alert('发布成功');window.location.href='index.aspx';</script>");
            }
            else
                Response.Write("发布失败");
        }
        catch (Exception e1)
        {
            Response.Write(e1.ToString());
        }
    }

}