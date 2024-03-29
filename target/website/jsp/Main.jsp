<%--
  Created by IntelliJ IDEA.
  User: Len
  Date: 2018/7/3
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>数据结构精品课程</title>
    <script src="../module/js/jquery-1.8.3.min.js" type="text/javascript"></script>

    <link type="text/css" rel="stylesheet" href="../module/css/head.css"/>
</head>

<body>
<div id="head">
    <div id="logo">

        <div id="logo_left">
            <div id="course_orgname"><h2>重庆理工大学</h2></div>
            <div id="course_name"><h1>数据结构精品课程</h1></div></div>
        <div id="logo_right">
            <div id="course_pic"></div>
            <div id="global_search">
                <label id="global_search_lable" for="search_key">全站搜索</label>
                <input id="search_key" type="text" name="search_key" value="" placeholder="请输入搜索关键字" />
                <input type="button" name="search_button" id="search_button"/>
            </div>
        </div>
    </div>
    <div id="nav">
        <div id="nav_first"></div>
        <ul id="nav_ul">

            <li class="nav_ul_li"><a href="#">首页</a></li>
            <li class="nav_ul_li"><a href="#">课程介绍</a></li>
            <li class="nav_ul_li"><a href="#">教室团队</a></li>
            <li class="nav_ul_li"><a href="#">课程建设</a></li>
            <li class="nav_ul_li"><a href="#">课程资源</a></li>
            <li class="nav_ul_li"><a href="#">问题与答疑</a></li>
            <li class="nav_ul_li"><a href="#">课程研究</a></li>
        </ul>
        <div id="nav_last"></div>

    </div>
</div>
<iframe src="homePageCenter.html" frameborder="0" width="100%" height="776" scrolling="no"></iframe>
<script src="head.js" type="text/javascript"></script>
<div id="foot">
    <ul id="site_info">
        <li class="touch_us">重庆理工大学计算机科学与工程学院版权所有</li>
        <li class="touch_us">联系地址：重庆市巴南区红光大道69号（邮编：400054）    联系电话：(023)68667334 </li>
    </ul>
</div>
</body>
</html>
