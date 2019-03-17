<%--
  Created by IntelliJ IDEA.
  User: Len
  Date: 2018/7/2
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加课程</title>
</head>
<body>
<form action="/addCourse" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id">
    课程名称：<input name="courseName"><br>
    课程简介：<input name="introduce"><br>
    课程负责人：<input name="manager"><br>
    选择文件:<input type="file" name="fileTemp" width="120px">
    <input type="hidden" name="resourceFile"><br>
    <input type="submit" value="提交">
    <input type="reset">
</form>
</body>
</html>
