<%--
  Created by IntelliJ IDEA.
  User: Len
  Date: 2018/6/30
  Time: 23:49
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改文章内容</title>
</head>
<body>
<form action="/editArticle" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id" value="${article.id}">
    标题：<input name="title" value="${article.title}"><br>
    作者：<input name="author" value="${article.author}"><br>
    栏目名称：<input name="columnName" value="${article.columnName}"><br>
    <input type="hidden" name="createDate" value="${article.createDate}"><br>
    置顶：<input name="isTop" value="${article.isTop}"><br>
    <input type="hidden" name="file" value="${article.file}"><br>
    选择文件:<input type="file" name="fileTemp" width="120px">
    <input type="submit" value="修改">
    <input type="reset">
</form>
</body>
</html>
