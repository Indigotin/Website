<%--
  Created by IntelliJ IDEA.
  User: Len
  Date: 2018/7/3
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
</head>
<body>
<form action="/changePwd" method="post">
    原密码：<input name="password"><br>
    新密码：<input name="newPassword1"><br>
    再次输入新密码：<input name="newPassword2"><br>
    <input type="submit" value="修改">
    <input type="reset">
</form>
</body>
</html>
