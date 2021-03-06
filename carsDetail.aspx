<!--新闻中心-->
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="carsDetail.aspx.cs" Inherits="carsDetail" validaterequest="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="imgs/favicon.ico">
    <title>汽车信息详情</title>
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/blog.css" rel="stylesheet">
    <script src="assets/js/ie8-responsive-file-warning.js"></script>
    <script src="assets/js/ie-emulation-modes-warning.js"></script>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
</head>
<body>
<nav class="navbar navbar-fixed-top navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">在线汽车销售</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.html">首页</a></li>
                <li><a href="newsCenter.aspx">新闻中心</a></li>
                <li class="active"><a href="onlineOrdering.aspx">在线订购</a></li>
                <li><a href="customerMessage.html">在线客服</a></li>
            </ul>
        </div>
    </div>
</nav>
<form runat="server">
    <div class="container">
    <div class="blog-header">
        <p class="lead blog-description"></p>
    </div>
    <div class="row">
        <div class="col-sm-8 blog-main">
            <div class="blog-post">
                <h2 class="blog-post-title"><asp:Label ID="Title" runat="server"></asp:Label></h2>
                <p><asp:Label ID="Introduction" runat="server"></asp:Label></p>
                <p>
                价格：￥<asp:Label ID="Price" runat="server"></asp:Label>万元
                </p>
                <p>
                <asp:ImageButton runat="server" ImageUrl="imgs/alipay.png" ID="aliPayBtn" ToolTip="支付宝支付" onclick="aliPayBtn_Click"/>
                <span style="padding:10px ">*该商品支持支付宝担保交易</span>
                </p>
                <hr>
                <p><asp:Label ID="Content" runat="server"></asp:Label></p>
                <p>发布时间：<asp:Label ID="Time" runat="server"></asp:Label></p>
            </div>
        </div>
    </div>
</div>
</form>
<footer class="blog-footer">
    <p>东华理工大学长江学院<a href="#">信息工程系</a> 由 <a href="#">赖思思</a>制作.</p>
    <p>
        <a href="#">返回顶部</a>
    </p>
</footer>
<script src="js/jquery.min.js"></script>
<script src="dist/js/bootstrap.min.js"></script>
<script src="assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
