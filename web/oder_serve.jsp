<%@ page import="com.sun.org.apache.xpath.internal.operations.Div" %>
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
    <link rel="stylesheet" href="css/myCSS.css">
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
                                <div class="left_div">
                                    <div class="ul_wraper">
                                    <ul class="left_ul">
                                        <li><a class="left_list_class " href="/queryOrder.action?user_id=${sessionScope.user.user_idcard_num}" id="oder_show_button">订单</a></li>
                                        <li><a class="left_list_class" href="javascript:void(0);" id="refund_show_button">退票</a></li>
                                        <li><a class="left_list_class" href="javascript:void(0);" id="endorse_show_button">改签</a></li>
                                        <li><a class="left_list_class" href="javascript:void(0);" id="afterSale_show_button">售后</a></li>
                                    </ul>
                                    </div>
                                </div>
                                <div class="right_div">
                                    <div id="order_view_div" name="order_view_div" class="right_view_class" style="display: block">
                                        <table id="order_view_table" name="order_view_table" class="oder_table_class">
                                            <tbody>
                                                <tr class="table_head_class">
                                                    <td><p>订单状态</p></td>
                                                    <td><p>乘客</p></td>
                                                    <td><p>下单时间</p></td>
                                                    <td><p>车次</p></td>
                                                    <td><p>列车类型</p></td>
                                                    <td><p>始发地</p></td>
                                                    <td><p>目的地</p></td>
                                                    <td><p>出发时间</p></td>
                                                    <td><p>价格</p></td>
                                                    <td><p>订单详情</p></td>
                                                </tr>

                                                <c:forEach items="${orderInfos}" var = "info">
                                                    <tr>
                                                        <td>${info.order_state}</td>
                                                        <td>${info.username}</td>
                                                        <td>${info.order_time}</td>
                                                        <td>${info.train_id}</td>
                                                        <td>${info.train_style}</td>
                                                        <td>${info.begin_zone_station}</td>
                                                        <td>${info.arrive_zone_station}</td>
                                                        <td>${info.train_time}</td>
                                                        <td>${info.ticket_price}</td>
                                                        <td><p><a class="oder_info_more"  id="order_detail" href="javascript:orderInfo_more(${info.order_id});">订单详情</a></p></td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>



                                    <div id="refund_view_div" class="right_view_class" style="display: none">
                                        <div class="refund_detail"><p>退票须知</p></div>
                                        <div class="refund_notice_area">
                                            <span><h4>据国家相关法律规定</h4></span>
                                        </div>
                                        <div class="refund_detail_bottom_area">
                                            <p><a href="javascript:void(0);" class="ticket_refund_serve" id="ticket_refund_serve">确定退票</a>
                                                <a href="#" class="detail_close">取消</a></p>
                                        </div>
                                    </div>

                                    <div id="endorse_view_div" class="right_view_class" style="display: none">
                                        <div class="refund_detail"><p>改签须知</p></div>
                                        <div class="refund_notice_area">
                                            <span><h4>据国家相关法律规定</h4></span>
                                        </div>
                                        <div class="refund_detail_bottom_area">
                                            <p><a href="#" class="ticket_refund_serve" >确定改签</a>
                                                <a href="#" class="detail_close">取消</a></p>
                                        </div>
                                    </div>

                                    <div id="afterSale_view_div" class="right_view_class" style="display: none">
                                        <div class="refund_detail"><p>售后咨询</p></div>
                                        <div class="refund_notice_area">
                                            <p>售后联系电话：</p>
                                            <p>400-189-1234567</p>
                                        </div>
                                        <div class="refund_detail_bottom_area">
                                            <p><a href="#" class="detail_close">取消</a></p>
                                        </div>
                                    </div>

                                    <div></div>
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
        <h2>login Panel</h2>
        <form method="get" action="/userLogin.action">
            <p id="login_tip">登陆提示</p>
            <input type="text" value="" id="username" name="phone_num" placeholder="您的手机号" onblur ="checkUser()" />
            <input type="password" value="" id="password" name="password" placeholder="您的密码" />

            <input type="submit" value="sıgn ın" id="login-button"/>
        </form>
        <a href="#" class="close">Close</a>
    </div>
</div>

<div class="oder-detail-popup-wrapper">
    <div id="detail-popup">
            <div class="lay-hd">
                <strong><h4 style="color: white">订单信息</h4></strong>
             </div>
        <div>
        <ul class="reg-list">
            <li>
                <div class="my_register_label">
                    乘 客 名：
                </div>
                <div class="r-txt">
                    <input id="user_realName" class="info_reset_class" disabled="true" type="text" value="${sessionScope.orderInfo.username}">
                </div>

            </li>

            <li>
                <div class="my_register_label">
                    车 次：
                </div>
                <div class="r-txt">
                    <input class="info_reset_class" disabled="true" id="train_id" name="train_id"  value="${sessionScope.orderInfo.train_id}">
                </div>
            </li>

            <li>
                <div class="my_register_label">
                    车厢号 ：
                </div>
                <div class="r-txt">
                    <input class="info_reset_class" disabled="true" id="carriage_number" name="carriage_number"  value="${sessionScope.orderInfo.compart_id}">
                </div>
            </li>

            <li>
                <div class="my_register_label">
                    座位号 ：
                </div>
                <div class="r-txt">
                    <input class="info_reset_class" disabled="true" id="seat_number" name="seat_number"  value="${sessionScope.orderInfo.seat_no}">
                </div>
            </li>

            <li>
                <div class="my_register_label">
                    出发地 ：
                </div>
                <div class="r-txt">
                    <input class="info_reset_class" disabled="true" id="start_place" name="start_place"  value="${sessionScope.orderInfo.begin_zone_station}">
                </div>
            </li>

            <li>
                <div class="my_register_label">
                    目的地 ：
                </div>
                <div class="r-txt">
                    <input class="info_reset_class" disabled="true" id="arrive_place" name="arrive_place"  value="${sessionScope.orderInfo.arrive_zone_station}">
                </div>
            </li>
            <li>
                <div class="my_register_label">
                    发车时间 ：
                </div>
                <div class="r-txt">
                    <input class="info_reset_class" disabled="true" id="during_time" name="during_time"  value="${sessionScope.orderInfo.train_time}">
                </div>
            </li>

        </ul>
        </div>
        <div class="oder_bottom_area">
            <p><a href="javascript:" class="ticket_refund_serve" id="refund_floatWindow_button">退票</a>
            <a href="#" class="ticket_endorse_serve" id="endorse_floatWindow_button">改签</a>
            <a href="#" class="detail_close">取消</a></p>
        </div>


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
<script src="js/myJS.js"></script>

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

</body>
</html>