<%--
  Created by IntelliJ IDEA.
  User: ZhouXin
  Date: 2018/7/4
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <title>登录</title>

    <link rel="stylesheet" href="../module/css/tips/tips.css">
    <link rel="stylesheet" href="../module/css/login.css">
    <script type="text/javascript" src="../module/js/login.js"></script>
    <script type="text/javascript" src="../module/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="../module/js/tips/tips.js"></script>
    <script type="text/javascript" src="../module/js/bootstrap/md5-min.js"></script>
</head>
<body>
    <div class="tips"></div>
    <div class="main">
        <img class="background" src="../module/img/login/total_bg.png"/>
    </div>
    <h1 class="sysname">通用课程网站系统</h1>
    <div class="loginForm rotate_right" id="loginBox">
        <!--  <div class="imgDiv">
            <img src="module/img/login/leftdirection_bg.png">
        </div>-->

        <div class="right">
            <div class="title">
                <span>用户登录/Login</span>
                <!-- <img src="module/img/login/blue_line.png"> -->
            </div>

            <div class="form">
                <div class="item">
                    <img src="../module/img/login/icon_account.png">
                    <input type="text" id="username" value="" placeholder="请输入账号" onkeydown="reset('username')">
                </div>
                <div class="item">
                    <img src="../module/img/login/icon_password.png">
                    <input type="password" id="password" value="" placeholder="请输入密码" onkeydown="reset('password')">
                </div>
                <div class="operate">
                    <span style="margin-right:120px;">记住密码</span>
                    <input type="checkbox" id="remeber" value="">
                    <a href="#">忘记密码？</a>
                </div>
            </div>
            <button class="button" onclick="login()">登录</button>
        </div>
    </div>
</body>
</html>
