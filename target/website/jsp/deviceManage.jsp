<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>通用课程网站系统</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <link rel="stylesheet" type="text/css" href="module/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="module/css/bootstrap/bootstrap-datetimepicker.css">
    <link rel="stylesheet" type="text/css" href="module/css/bootstrap/bootstrap-table.css">
    <link rel="stylesheet" type="text/css" href="module/css/deviceManage.css">
    <link rel="stylesheet" href="module/css/tips/tips.css" />

    <script type="text/javascript" src="module/js/bootstrap/jquery-3.1.1.min.js"></script>
    <script src="module/js/bootstrap/bootstrap.js"></script>
    <script src="module/js/bootstrap/bootstrap-table.js"></script>
    <script src="module/js/bootstrap/bootstrap-table-zh-CN.js"></script>
    <script src="module/js/bootstrap/bootstrap-treeview.js"></script>
    <script src="module/js/bootstrap/bootstrap-datetimepicker.js" type="text/javascript"></script>
    <script src="module/js/bootstrap/bootstrap-datetimepicker.zh-CN.js" type="text/javascript"></script>
</head>

<body style="background: #e8e8e8;">
<div class="tips"></div>
<div class="searchBar">
    <span>用户名：<input type="text" name="deviceName" id="deviceName"  /></span>
    <span>角色名：<input type="text" name="devicetype" id="deviceType"  /></span>
    <span class="searchButton" title="搜索">
			<img style="padding-top: 6px;" src="module/img/deviceManage/icon_search.png" />
		</span>
</div>
<div class="menuBar">
    <button>新增</button>
    <button class="del">删除</button>
    <button>修改</button>
</div>
<table id="table"></table>
</body>
<script type="text/javascript" src = "module/js/deviceManage.js"></script>
<script type="text/javascript" src = "module/js/tips/tips.js"></script>
</html>
