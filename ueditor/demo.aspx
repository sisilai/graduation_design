<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo.aspx.cs" Inherits="admin_demo" ValidateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" action="../admin/default.aspx" runat="server">
    <div>
        <!-- 加载编辑器的容器 -->
    <script id="container" name="content" type="text/plain">
            这里写你的初始化内容
        </script>
    <button type="submit">提交</button>
    </div>
    </form>
    <!-- 配置文件 -->
<script type="text/javascript" src="ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
    var ue = UE.getEditor('container');
</script>
</body>
</html>
