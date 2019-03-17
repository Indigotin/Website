<%--
  Created by IntelliJ IDEA.
  User: Len
  Date: 2018/7/2
  Time: 0:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>editCourse</title>
</head>
<body>
<form action="/editCourse" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id" value="${course.id}">
    课程名称：<input name="courseName" value="${course.courseName}"><br>
    课程简介：<input name="introduce" value="${course.introduce}"><br>
    课程负责人：<input name="manager" value="${course.manager}"><br>
    选择文件:<input type="file" name="fileTemp" width="120px">
    <input type="hidden" name="resourceFile" value="${course.resourceFile}"><br>
    <input type="submit" value="提交">
    <input type="reset">
</form>
</body>
</html>
