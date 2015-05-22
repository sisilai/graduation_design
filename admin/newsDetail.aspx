<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newsDetail.aspx.cs" Inherits="admin_newsDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../imgs/favicon.ico">
    <title>在线汽车销售 - 后台新闻管理</title>
    <link href="../dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/dashboard.css" rel="stylesheet">
    <script src="../assets/js/ie-emulation-modes-warning.js"></script>
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="icon-bar"><a href="index.aspx">1</a></span>
                    <span class="sr-only"><a href="news.aspx"><span class="sr-only">2</span></a></span>
                </button>
                <a class="navbar-brand" href="#">在线汽车销售后台管理</a>
            </div>
        </div>
    </nav>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3 col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li><a href="index.aspx">汽车信息</a></li>
                        <li class="active"><a href="news.aspx">新闻中心 <span class="sr-only">(current)</span></a></li>
                    </ul>
                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                    <h1 class="sub-header">新闻详情</h1>
                    <div>
                        标题：<asp:Label ID="Title" runat="server"></asp:Label><br />
                        详情内容：<asp:Label ID="Content" runat="server"></asp:Label><br />
                        发布时间：<asp:Label ID="Time" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <script src="../js/jquery.min.js"></script>
        <script src="../dist/js/bootstrap.min.js"></script>
        <script src="../assets/js/vendor/holder.js"></script>
        <script src="../assets/js/ie10-viewport-bug-workaround.js"></script>
    </form>
</body>

</html>
