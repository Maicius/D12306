<%@ page import="com.sun.org.apache.xpath.internal.operations.Div" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>登录</title>
    <link rel="stylesheet" href="css/amazeui.min.css">
    <link rel="stylesheet" href="css/main.css">
</head>
<body class="colorfulBack">
<div class="am-vertical-align" style="height: 100vh; text-align: center">
    <div class="login-main am-vertical-align-middle">
        <div class="top_container mid_item">
            <h1><a href="" style="color: #636368" class="am-animation-fade">12306购票网站</a></h1>
            <p class="am-animation-fade">-JavaSpring-</p>
        </div>
        <div class="am-container am-text-left">
            <form action="/userLogin.action" method="get">
                <div class="am-g am-margin-top-xs">
                    <label class="am-u-sm-3">用户名</label>
                    <div class="am-u-sm-9"><input id="loginName" name="phone_num" type="text"></div>
                </div>
                <div class="am-g am-margin-top-xs">
                    <label class="am-u-sm-3">密码</label>
                    <div class="am-u-sm-9"><input id="password" name="password" type="password"></div>
                </div>
                <div class="am-g am-margin-top-lg">
                    <div class="am-container">
                        <input type="submit" value="sıgn ın" id="login-button"/>
                    </div>
                </div>
                <div class="am-g">
                    <div class="am-u-sm-6">
                        <a id="forget_password" class="normal_text_link" href="">忘记密码</a>
                    </div>
                    <div class="am-u-sm-6 am-text-right">
                        <a id="signup.html" class="normal_text_link">立即注册</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="assets/js/lib/jquery-3.1.0.min.js"></script>
<script src="assets/js/lib/common.js"></script>
<script src="assets/js/login.js"></script>
</body>
</html>