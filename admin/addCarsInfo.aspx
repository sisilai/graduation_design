<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addCarsInfo.aspx.cs" Inherits="admin_addCarsInfo" validaterequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../imgs/favicon.ico">
    <title>在线汽车销售 - 后台汽车信息</title>
    <link href="../dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/dashboard.css" rel="stylesheet">
    <script src="../assets/js/ie-emulation-modes-warning.js"></script>
</head>
<body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only"><a href="index.aspx"><span class="sr-only">1(current)</span></a></span>
                    <span class="icon-bar"><a href="news.aspx">2</a></span>
                </button>
                <a class="navbar-brand" href="#">在线汽车销售后台管理</a>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3 col-md-2 sidebar">
                <ul class="nav nav-sidebar">
                    <li class="active"><a href="index.aspx">汽车信息 <span class="sr-only">(current)</span></a></li>
                    <li><a href="news.aspx">新闻中心</a></li>
                </ul>
            </div>
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1 class="sub-header">添加汽车信息s</h1>
                <form id="form1" runat="server" action="addCarsPreview.aspx" method="post">
                    <div>
                        <div><span>标题：</span><asp:TextBox ID="Title" name="title" runat="server"></asp:TextBox></div>
                        <div><span>简介：</span><asp:TextBox ID="Introduction" name="introduction" runat="server" style="width:95%;"></asp:TextBox></div>
                        <div><span>价格：</span><asp:TextBox ID="Price" name="price" runat="server"></asp:TextBox>万元</div>
                        <!-- 加载编辑器的容器 -->
                        <div>
                            <span>详情内容：</span>
                        <script id="Content" name="content" type="text/plain">详细说下这款车吧</script>
                        </div>
                        <input type="submit" value="提交" />
                    </div>
                    <!-- 配置文件 -->
                    <script type="text/javascript" src="../ueditor/ueditor.config.js"></script>
                    <!-- 编辑器源码文件 -->
                    <script type="text/javascript" src="../ueditor/ueditor.all.js"></script>
                    <!-- 实例化编辑器 -->
                    <script type="text/javascript">
                        var ue = UE.getEditor('Content');
                    </script>
                </form>
            </div>
        </div>
    </div>
    <script src="../js/jquery.min.js"></script>
    <script src="../dist/js/bootstrap.min.js"></script>
    <script src="../assets/js/vendor/holder.js"></script>
    <script src="../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
