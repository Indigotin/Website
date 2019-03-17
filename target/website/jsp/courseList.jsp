<%--
  Created by IntelliJ IDEA.
  User: Len
  Date: 2018/7/2
  Time: 0:27
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课程列表</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/showChangePwdpage" method="post">
    <table width="100%" border=1>
        <tr>
            <td><input type="submit" value="修改密码"/></td>
        </tr>
    </table>
</form>
<form action="${pageContext.request.contextPath}/showAddCoursePage" method="post">
    <table width="100%" border=1>
        <tr>
            <td><input type="submit" value="添加"/></td>
        </tr>
    </table>
    课程列表：
    <table width="100%" border=1>
        <tr>
            <td>课程名称</td>
            <td>课程简介</td>
            <td>课程负责人</td>
            <td>课程资源</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${courseList}" var="course">
            <tr>
                <td>${course.courseName}</td>
                <td>${course.introduce}</td>
                <td>${course.manager}</td>
                <td><a href="${pageContext.request.contextPath}/downCourseRes?id=${course.id}">下载</a></td>
                <td><a href="${pageContext.request.contextPath}/editCoursePre?id=${course.id}">修改</a>
                    <a href="${pageContext.request.contextPath}/delCourse?id=${course.id}">删除</a></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
