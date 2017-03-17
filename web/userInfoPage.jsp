<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!doctype html>
<!--[if IE 7]>
<html class="ie7"> <![endif]-->
<!--[if IE 8]>
<html class="ie8"> <![endif]-->
<!--[if IE 9]>
<html class="ie9"> <![endif]-->
<!--[if IE 9]>
<html class="ie10"> <![endif]-->
<!--[if (gt IE 10)|!(IE)]><!-->
<html lang="en-US"> <!--<![endif]-->
<head>
    <!-- META TAGS -->
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width"/>

    <!-- Title -->
    <title>N-Travel</title>

    <!-- Style Sheet-->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/flexslider.css">

    <!-- favicon -->
    <link rel="shortcut icon" href="images/favicon.png">

    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <link rel="stylesheet" href="css/ie.css">
    <![endif]-->
</head>
<body>
<!-- HEADER TOP -->
<div id="top"></div>
<div class="header-one">
    <div class="headertop-wrapper">
        <div class="container">

            <div class="row">
                <div class="span5 clearfix">
                    <div class="lang pull-right">
                        <span>Select a language:<a href="#">English</a></span>
                    </div>
                </div>
                <div class="span4 srch">
                    <form>
                        <input type="submit" value="">
                        <input type="text" name="search" placeholder="Search">
                    </form>
                </div>
                <div class="span3">
                    <div class="social-nav">
                        <a href="#" class="facebook "></a>
                        <a href="#" class="twitter"></a>
                        <a href="#" class="google"></a>
                        <a href="#" class="rss"></a>
                    </div>
                    <a href="#" class="sign-in" id="login-link">manager</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- HEADER IOP -->

<!-- HEADER -->
<div class="header-wrapper">
    <div class="container">
        <div class="row">

            <!-- Logo -->
            <div class="span4">
                <div class="logo">
                    <a href="index.jsp"><img src="images/logo.png" alt="Logo"  ></a>
                </div>
            </div>
            <!-- Logo -->

            <!--top Menu -->
            <div class="span8">
                <div class="top-menu" id="top_menu_log" style="display: ${sessionScope.username !=null?"none":"block"}">
                    <ul>
                        <li><a href="#"  id="user_login">用户登录</a></li>
                        <li><a href="register.jsp" class="last" id="user_register">注册</a></li>
                    </ul>
                </div>

                <div class="top-menu" id="top_menu_logout" style="display: ${sessionScope.username !=null?"block":"none"}">
                    <ul>
                        <li>欢迎您！<a href="javascript: void(0);"  id="user_name_show" name="user_name_show">${sessionScope.username}</a></li>
                        <li><a href="javascript: void(0);" class="last" id="user_logout">注销</a></li>
                    </ul>
                </div>


            </div>
            <!--top Menu -->

        </div>
    </div>
</div>
<!-- HEADER -->
<!-- Main Navigation -->
<div class="nav-wrapper">
    <div class="container">
        <div class="row">
            <div class="span12">

                <nav>
                    <ul>
                        <li><a href="index.jsp">首页 </a></li>
                        <li><a href="purchase.jsp">购票</a></li>
                        <li><a href="oder_serve.jsp">退票</a></li>
                        <li><a href="purchase.jsp">余票查询</a></li>
                        <li><a href="purchase.jsp">票价查询</a></li>
                        <li><a href="oder_serve.jsp">改签</a></li>
                        <li><a href="userInfoPage.jsp">个人中心</a></li>
                        <li  class="last"><a href="oder_serve.jsp">我的订单</a></li>
                    </ul>
                </nav>

            </div>
        </div>
    </div>
</div>
<!-- Main Navigation -->
<!-- Slider -->
<div class="content booking_wrap">
    <div class="container">
        <div class="row ">
            <div class="span12 booking confrm clearfix">
                <div class="top ">

                    <div class="content_top">

                        <form action="" method="post">

                            <div class="my_top userInfoBorder">
                                <div class="lay-hd">
                                    <strong><h4 style="color: white">个人信息</h4></strong>
                                </div>


                                <ul class="reg-list">
                                    <li>
                                        <div class="my_register_label">
                                            用 户 名：
                                        </div>
                                        <div class="r-txt">
                                            <input class="info_reset_class" id="username_input" name="username" disabled="true" value="${sessionScope.user.user_name}">
                                        </div>

                                    </li>

                                    <li>
                                        <div class="my_register_label">
                                            姓 名：
                                        </div>
                                        <div class="r-txt">
                                            <input  class="info_reset_class" id="truename_input" name="real_name" disabled="true" value="${sessionScope.user.real_name}">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="my_register_label">
                                            证件类型：
                                        </div>
                                        <div class="r-txt">
                                            <input  class="info_reset_class" id="card_type_input" name="idcard_type"disabled="true" value="${sessionScope.user.idcard_type}">
                                        </div>

                                    </li>
                                    <li>
                                        <div class="my_register_label">
                                            证件号码：
                                        </div>
                                        <div class="r-txt">
                                            <input  class="info_reset_class" id="card_number_input" name="idcard_num" disabled="true" value="${sessionScope.user.user_idcard_num}">
                                        </div>
                                    </li>

                                    <li>
                                        <div class="my_register_label">
                                            邮 箱：
                                        </div>
                                        <div class="r-txt">
                                            <input  class="info_reset_class" id="email_address_input" name="email" disabled="true" value="${sessionScope.user.email}">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="my_register_label">
                                            手机号码：
                                        </div>
                                        <div class="r-txt">
                                            <input  class="info_reset_class" id="phone_number_input" name="phone_num" disabled="true" value="${sessionScope.user.phone_num}">
                                        </div>

                                    </li>
                                    <li>
                                        <div class="my_register_label">
                                            旅客类型：
                                        </div>

                                        <div class="r-txt" id="click_hidden">
                                            <input  class="info_reset_class" id="passenger_type_input" name="passenger_type_input" disabled="true" value="${sessionScope.user.passenger_type}">
                                        </div>
                                        <div class="r-txt " id="hidden_part" style="display: none">
                                            <select class="w200sel info_reset_class" id="passengerType"
                                                    name="passenger_type" disabled="true" >
                                                <option value="1">成人</option>
                                                <option value="2">儿童</option>
                                                <option value="3">学生</option>
                                                <option value="4">残疾军人、伤残人民警察</option>
                                            </select>
                                        </div>
                                    </li>



                                </ul>
                                <div id="register_button_div" class="register_button_div">
                                    <a id="info_reset_button" href="javascript:void(0);" class="register_submit_button" >修改信息</a>
                                    <!--
                                        点击修改信息后显示确认按钮
                                    -->
                                    <a id="info_reset_submit" href="javascript:void(0);" class="register_submit_button" style="display: none">确认</a>

                                </div>
                                <div style="clear:both"></div> <!--消除float带来的问题，使父元素被撑起来-->
                            </div>
                        </form>
                    </div>

                </div>


            </div>
        </div>
    </div>
</div>                <!-- Slider -->
<!-- Special Offer -->

<!-- Special Offer -->

<!-- Tweet -->

<!-- Tweet -->

<!-- Footer widget -->

<div class="container">
    <div class="row">

        <div class="span3 f-widget copy-right">

            <p>© 2017 <a href="#">my_12306</a>. All rights reserved</p>
            <p>Designed by us</p>
        </div>


    </div>
</div>
</div>
<!-- Footer widget -->

<!-- Footer -->

<!-- Footer -->

<div class="login-popup-wrapper">
    <div id="login-popup">
        <h2>sign in</h2>
        <form method="get" action="#">
            <input type="text" value="" id="username" placeholder="用户名"/>
            <input type="text" value="" id="password" placeholder="密码"/>

            <input type="submit" value="sıgn ın" id="login-button"/>
        </form>
        <a href="#" class="close">关闭</a>
    </div>
</div>


<!-- Scripts -->
<script src="js/jquery-1.7.1.min.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/jquery.flexslider-min.js"></script>
<script src="js/jquery.elastislide.js"></script>
<script src="js/jquery.carouFredSel-6.0.4-packed.js"></script>
<script src="js/jcarousellite_1.0.1.js"></script>
<script src="js/jquery.zweatherfeed.js"></script>
<script src="js/jquery.simpleWeather-2.3.min.js"></script>
<script src="js/jquery.cycle.all.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/jquery.tinyscrollbar.min.js"></script>
<script>
    function goToByScroll(id) {
        $ = jQuery;
        $('html,body').animate({scrollTop: $("#" + id).offset().top}, 3000);
    }
</script>
<script type="text/javascript">
    $(document).ready(function () {
        $('.scrollbar1').tinyscrollbar();
    });
</script>
<script src="js/custom.js"></script>
<script src="js/myJS.js"></script>

</body>
</html>