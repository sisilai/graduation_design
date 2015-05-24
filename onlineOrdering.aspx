<!--在线订购-->
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="onlineOrdering.aspx.cs" Inherits="onlineOrdering" validaterequest="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="imgs/favicon.ico">
    <title>在线订购</title>
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">

    <link href="css/offcanvas.css" rel="stylesheet">
    <link href="css/ordering.css" rel="stylesheet">
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
                <li><a href="newsCenter.aspx">新闻中心</a></li>
                <li class="active"><a href="onlineOrdering.aspx">在线订购</a></li>
                <li><a href="customerMessage.html">在线客服</a></li>
            </ul>
        </div><!-- /.nav-collapse -->
    </div><!-- /.container -->
</nav><!-- /.navbar -->

<div class="container">
    <form runat="server">
                    <asp:GridView ID="gvCars" runat="server" Width="100%" Height="120px" GridLines="None" ShowHeader="False" EnableModelValidation="True" AutoGenerateColumns="False">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                      <asp:TemplateField ItemStyle-Width="20%">
                                          <ItemTemplate>
                                              <asp:Image ID="carImg" ImageUrl="imgs/carousel_1.jpg" runat="server" Width="180px" Height="100px" />
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                <asp:BoundField DataField="id" Visible = "False"/>
                                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="carsDetail.aspx?id={0}" DataTextField="title" Target="_blank" ItemStyle-Width="70%"/>
                                <asp:BoundField DataField="price" DataFormatString="￥{0:C3}万元" ItemStyle-Width="10%"/>

                            </Columns>
                            <RowStyle Height="120px"/>
                                   <selectedrowstyle backcolor="LightCyan"
                                     forecolor="DarkBlue"
                                     font-bold="true"/>
                        </asp:GridView>
                        </form>
    <!-- /END THE FEATURETTES -->
</div><!--/.container-->
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
