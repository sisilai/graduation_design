<!--新闻中心-->
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newsCenter.aspx.cs" Inherits="newsCenter" validaterequest="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="imgs/favicon.ico">

    <title>新闻中心</title>

    <!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/offcanvas.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
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
                <li class="active"><a href="newsCenter.aspx">新闻中心</a></li>
                <li><a href="onlineOrdering.aspx">在线订购</a></li>
                <li><a href="customerMessage.html">在线客服</a></li>
            </ul>
        </div><!-- /.nav-collapse -->
    </div><!-- /.container -->
</nav><!-- /.navbar -->

<form runat="server">
    <div class="container">

    <div class="row row-offcanvas row-offcanvas-right">
        <div class="col-xs-6 col-sm-12 sidebar-offcanvas" id="sidebar">
            <div class="list-group">
                <a href="#" class="list-group-item active">新闻中心</a>
                        <asp:GridView ID="gvNews" runat="server" Width="100%" GridLines="horizontal" ShowHeader="False" EnableModelValidation="True" AutoGenerateColumns="False">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="id" Visible = "False"/>
                                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="newsDetail.aspx?id={0}" DataTextField="title"  Target="_blank"  ItemStyle-Width="85%"/>
                                <asp:BoundField DataField="time" ItemStyle-Height="30px"/>
                            </Columns>
                        </asp:GridView>
            </div>
        </div><!--/.sidebar-offcanvas-->
    </div><!--/row-->

</div><!--/.container-->
</form>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.min.js"></script>
<script src="dist/js/bootstrap.min.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="assets/js/ie10-viewport-bug-workaround.js"></script>

<script src="js/offcanvas.js"></script>
</body>
</html>
