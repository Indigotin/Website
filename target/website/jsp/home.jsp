<%--
  Created by IntelliJ IDEA.
  User: ZhouXin
  Date: 2018/7/4
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>个人首页</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <link rel="stylesheet" href="../module/css/home.css">
    <script type="text/javascript" src="../module/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="../module/js/home.js"></script>
</head>
<body>
    <div class="head">
        <img src="../module/img/home/menu.png" /> <span>通用课程网站系统</span>
    </div>
    <div class="settingMenu" id="slide-out-left">
        <ul class="options">
            <li class="profil"><img id="headcrop"
                                    src="../module/img/home/headcrop.jpg" alt=""> <span id="username">Almare</span>
            </li>

            <li class="firstary" onclick="loadPage('deviceManage.jsp', '用户管理')"><img id="icon" alt="" src="../module/img/home/icon_product_nor.png"><a>用户管理</a></li>

            <li class="firstary"><img id="icon" src="../module/img/home/icon_eye_nor.png" alt="">课程资源管理</li>
            <li class="firstary"><img id="icon"
                                      src="../module/img/home/icon_monitor_nor.png" alt="">文章资源管理</li>
            <li>
                <div class="personalCenter firstary"
                     onclick="treeOperate('open','personalCenter')">
                    <img id="icon" src="../module/img/home/icon_username.png" alt="">个人中心
                </div>
                <div class="secondary hidden">
                    <ul>
                        <li><img id="icon" src="../module/img/home/icon_username.png"
                                 alt=""><a>个人信息</a></li>
                        <li><img id="icon" src="../module/img/register/3.jpg" alt=""><a>消息</a></li>
                    </ul>
                </div>
            </li>
            <li class="firstary"><img id="icon" src="../module/img/home/icon_eixt.png"
                                      alt="">退出账户</li>
        </ul>
    </div>
    <div class="content">
        <div class="crumbs">
            <img style="margin-right: 5px;" id="icon" src="../module/img/home/icon_point.png" alt="">当前位置>><a class="location">主页</a>
        </div>
        <iframe name="iframe" frameborder=0 id="iframe"
                src="welcome.jsp"></iframe>
    </div>
</body>
</html>
