<%--
  Created by IntelliJ IDEA.
  User: Len
  Date: 2018/7/2
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加文章</title>
</head>
<body>
<form action="/addArticle" method="post" enctype="multipart/form-data">


    <input type="hidden" name="id">
    标题：<input name="title"><br>
    作者：<input name="author"><br>
    栏目名称：<input name="columnName"><br>
    <input type="hidden" name="createDate" value="Mon Jul 02 23:05:16 CST 2018"><br>
    置顶：<input name="isTop"><br>
    <input type="hidden" name="file"><br>
    选择文件:<input type="file" name="fileTemp" width="120px">
    <input type="submit" value="提交">
    <input type="reset">
</form>
</body>
</html>
