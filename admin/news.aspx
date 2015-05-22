<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="admin_news" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../imgs/favicon.ico">

    <title>在线汽车销售 - 后台新闻中心</title>
    <link href="../dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/dashboard.css" rel="stylesheet">
    <script src="../assets/js/ie-emulation-modes-warning.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only"><a href="news.aspx"><span class="sr-only">1(current)</span></a></span>
                <span class="icon-bar"><a href="index.aspx">2</a></span>
            </button>
            <a class="navbar-brand" href="#">在线汽车销售后台管理</a>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li><a href="index.aspx">汽车信息</a></li>
                <li class="active"><a href="news.aspx">新闻中心<span class="sr-only">(current)</span></a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="sub-header">新闻中心</h1>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>标题</th>
                        <th>内容</th>
                        <th>时间</th>
                        <th>修改</th>
                        <th>删除</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1,001</td>
                        <td>Lorem</td>
                        <td>ipsum</td>
                        <td>dolor</td>
                        <td>sit</td>
                    </tr>
                    <tr>
                        <td>1,002</td>
                        <td>amet</td>
                        <td>consectetur</td>
                        <td>adipiscing</td>
                        <td>elit</td>
                    </tr>
                    <tr>
                        <td>1,003</td>
                        <td>Integer</td>
                        <td>nec</td>
                        <td>odio</td>
                        <td>Praesent</td>
                    </tr>
                    <tr>
                        <td>1,003</td>
                        <td>libero</td>
                        <td>Sed</td>
                        <td>cursus</td>
                        <td>ante</td>
                    </tr>
                    <tr>
                        <td>1,004</td>
                        <td>dapibus</td>
                        <td>diam</td>
                        <td>Sed</td>
                        <td>nisi</td>
                    </tr>
                    <tr>
                        <td>1,005</td>
                        <td>Nulla</td>
                        <td>quis</td>
                        <td>sem</td>
                        <td>at</td>
                    </tr>
                    <tr>
                        <td>1,006</td>
                        <td>nibh</td>
                        <td>elementum</td>
                        <td>imperdiet</td>
                        <td>Duis</td>
                    </tr>
                    <tr>
                        <td>1,007</td>
                        <td>sagittis</td>
                        <td>ipsum</td>
                        <td>Praesent</td>
                        <td>mauris</td>
                    </tr>
                    <tr>
                        <td>1,008</td>
                        <td>Fusce</td>
                        <td>nec</td>
                        <td>tellus</td>
                        <td>sed</td>
                    </tr>
                    <tr>
                        <td>1,009</td>
                        <td>augue</td>
                        <td>semper</td>
                        <td>porta</td>
                        <td>Mauris</td>
                    </tr>
                    <tr>
                        <td>1,010</td>
                        <td>massa</td>
                        <td>Vestibulum</td>
                        <td>lacinia</td>
                        <td>arcu</td>
                    </tr>
                    <tr>
                        <td>1,011</td>
                        <td>eget</td>
                        <td>nulla</td>
                        <td>Class</td>
                        <td>aptent</td>
                    </tr>
                    <tr>
                        <td>1,012</td>
                        <td>taciti</td>
                        <td>sociosqu</td>
                        <td>ad</td>
                        <td>litora</td>
                    </tr>
                    <tr>
                        <td>1,013</td>
                        <td>torquent</td>
                        <td>per</td>
                        <td>conubia</td>
                        <td>nostra</td>
                    </tr>
                    <tr>
                        <td>1,014</td>
                        <td>per</td>
                        <td>inceptos</td>
                        <td>himenaeos</td>
                        <td>Curabitur</td>
                    </tr>
                    <tr>
                        <td>1,015</td>
                        <td>sodales</td>
                        <td>ligula</td>
                        <td>in</td>
                        <td>libero</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../js/jquery.min.js"></script>
<script src="../dist/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="../assets/js/vendor/holder.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>

</html>
