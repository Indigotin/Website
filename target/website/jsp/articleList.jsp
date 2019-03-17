<%--
  Created by IntelliJ IDEA.
  User: Len
  Date: 2018/6/30
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>articleList</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/showAddUserPage" method="post">
    <table width="100%" border=1>
        <tr>
            <td><input type="submit" value="添加账户"/></td>
        </tr>
    </table>
</form>
<form action="${pageContext.request.contextPath}/showChangePwdpage" method="post">
    <table width="100%" border=1>
        <tr>
            <td><input type="submit" value="修改密码"/></td>
        </tr>
    </table>
</form>
<form action="${pageContext.request.contextPath}/showAddArticlePage" method="post">
    <table width="100%" border=1>
        <tr>
            <td><input type="submit" value="添加"/></td>
        </tr>
    </table>
    商品列表：
    <table width="100%" border=1>
        <tr>
            <td>标题</td>
            <td>作者</td>
            <td>栏目名称</td>
            <td>创建日期</td>
            <td>置顶</td>
            <td>文章内容</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${articleList}" var="article">
            <tr>
                <td>${article.title}</td>
                <td>${article.author}</td>
                <td>${article.columnName}</td>
                <td><fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>${article.isTop}</td>
                <td><a href="${pageContext.request.contextPath}/downArticle?id=${article.id}">下载</a></td>
                <td><a href="${pageContext.request.contextPath}/editArticlePre?id=${article.id}">修改</a>
                    <a href="${pageContext.request.contextPath}/delArticle?id=${article.id}">删除</a></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
