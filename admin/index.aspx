<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin_index" %>

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
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3 col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li class="active"><a href="index.aspx">汽车信息 <span class="sr-only">(current)</span></a></li>
                        <li><a href="news.aspx">新闻中心</a></li>
                    </ul>
                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                    <h1 class="sub-header">汽车信息<a href="addCarsInfo.aspx" style="font-size: 14px;padding-left: 20px;" title="新增汽车信息" target="_parent">新增</a></h1>
                    <div class="table-responsive">
                        <asp:GridView ID="gvCars" runat="server" Width="100%"  EnableModelValidation="True" CellPadding="4" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" OnRowDeleting="gvCars_RowDeleting">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="编号" ItemStyle-Height="30px"/>
                                <asp:BoundField DataField="title" HeaderText="车名" />
                                <asp:BoundField DataField="introduction" HeaderText="简介" />
                                <asp:BoundField DataField="price" HeaderText="价格(万元)" />
                                <asp:BoundField DataField="time" HeaderText="时间" />
                                <asp:HyperLinkField HeaderText="查看内容" DataNavigateUrlFields="id" DataNavigateUrlFormatString="carsInfoDetail.aspx?id={0}" Text="查看内容" Target="_blank" />
                                <asp:HyperLinkField HeaderText="编辑信息" DataNavigateUrlFields="id" DataNavigateUrlFormatString="editCarsInfo.aspx?id={0}" Text="编辑信息" Target="_blank" />
                                <asp:TemplateField ShowHeader="True" HeaderText="删除信息">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="deleteCarsBtn" runat="server" CausesValidation="False" CommandName="Delete"
                                                                    Text="删除信息" OnClientClick='<%#  "if (!confirm(\"你确定要删除" + Eval("title").ToString() + "吗?\")) return false;"%>'></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="Black" />
                            <HeaderStyle BackColor="#ffffff" Font-Bold="True" ForeColor="black" BorderStyle="None" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#ffffff" />
                            <SelectedRowStyle BackColor="#f9f9f9" Font-Bold="True" ForeColor="#f9f9f9" />
                        </asp:GridView>
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
