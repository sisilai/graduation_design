<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../imgs/favicon.ico">

    <title>登录后台</title>
    <link href="../dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/signin.css" rel="stylesheet">
    <script src="../assets/js/ie-emulation-modes-warning.js"></script>
</head>
<body>
    <div class="container">
        <form id="form1" class="form-signin" runat="server">
            <h2 class="form-signin-heading">请登录</h2>
            <label for="inputEmail" class="sr-only">用户名</label>
            <asp:TextBox ID="inputEmail" runat="server" class="form-control" placeholder="用户名" required autofocus></asp:TextBox>
            <label for="inputPassword" class="sr-only">密码</label>
            <asp:TextBox ID="inputPassword" runat="server" TabIndex="1" TextMode="Password" class="form-control" placeholder="密码" required></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" TabIndex="3" class="btn btn-lg btn-primary btn-block" type="submit" />
        </form>
    </div>
    <script src="../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
