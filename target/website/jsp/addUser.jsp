<%--
  Created by IntelliJ IDEA.
  User: Len
  Date: 2018/7/3
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加账户</title>
</head>
<body>
<form action="/addUser" method="post">

    用户名：<input name="user_name"><br>
    密码：<input name="password"><br>
    角色权限：<select name="privilege">
                <option>1</option>
                <option>2</option>
                <option>3</option>
            </select><br>
    <input type="submit" value="提交">
    <input type="reset">
</form>
</body>
</html>
