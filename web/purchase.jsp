<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!doctype html>
<!--[if IE 7]>    <html class="ie7" > <![endif]-->
<!--[if IE 8]>    <html class="ie8" > <![endif]-->
<!--[if IE 9]>    <html class="ie9" > <![endif]-->
<!--[if IE 9]>    <html class="ie10" > <![endif]-->
<!--[if (gt IE 10)|!(IE)]><!--> <html lang="en-US"> <!--<![endif]-->
<head>
    <!-- META TAGS -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />

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
                        <a href="#" class="twitter" ></a>
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
                    <a href="index.jsp"><img src="images/logo.png" alt="Logo"></a>
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
                        <form action="/queryTicket.action" method="get">
                            <div class="my_top">
                                <div class="my_places">
                                    <div class="my_start">
                                        <p><span class="my_span">出发地</span> <input type="text" name="from_station" id="start_place" class="my_input" /></p>
                                        <p><span class="my_span">目的地 </span><input type="text" name="to_station" id="end_place" class="my_input" /></p>
                                    </div>
                                </div>


                                <div class="my_time">
                                    <div class="my_start">
                                        <p><span class="my_span">出发时间</span><input type="text" name="ticket_date" id="start_time" class="my_input" /></p>

                                    </div>
                                </div>

                                <div class="my_person">
                                    <div class="my_start">
                                    				<span id="">
                                    					<p><label><input name="person_style" type="radio" value="" />&nbsp;学生</label></p>
                                             			<p><label><input name="person_style" type="radio" value="" />&nbsp;普通 </label></p>
                                    				</span>
                                    </div>
                                </div>
                                <div class="my_search" >
                                    <input class="btn" type="submit" value="查询"/>
                                    <input class="btn" type="reset" value="重置"/>
                                </div>
                                <div style="clear:both"></div> <!--消除float带来的问题，使父元素被撑起来-->
                            </div>
                        </form>
                    </div>

                    <!--查询结果显示区域-->
                    <div class="content_result">
                        <table>
                            <thead>
                            <tr class="th" id="float">
                                <th colspan="1" rowspan="1" ><p>车次</p></th>
                                <th colspan="1" rowspan="1" ><p>出发站</p></th>
                                <th colspan="1" rowspan="1" ><p>到达站</p></th>
                                <th colspan="1" rowspan="1" ><p>日期</p></th>
                                <th colspan="1" rowspan="1" ><p>出发时间</p></th>
                                <th colspan="1" rowspan="1" ><p>到达时间</p></th>
                                <th colspan="1" rowspan="1" ><p>里程</p></th>
                                <th colspan="1" rowspan="1" ><p>车型</p></th>
                                <th colspan="1" rowspan="1" ><p>车类</p></th>
                                <th colspan="1" rowspan="1" ><p>票价</p></th>
                                <th colspan="1" rowspan="1" ><p>余票</p></th>
                                <th colspan="1" rowspan="1" ><p>购买</p></th>
                            </tr>
                            </thead>
                            <tbody id="queryLeftTable">
                            <c:forEach items="${queryInfos}" var = "info">
                            <tr>
                                <td>${info.train_id}</td>
                                <td>${info.start_station}</td>
                                <td>${info.arrive_station}</td>
                                <td>${info.ticket_date}</td>
                                <td>${info.start_time}</td>
                                <td>${info.arrive_time}</td>
                                <td>${info.mile}</td>
                                <td>${info.train_style}</td>
                                <td>${info.train_class}</td>
                                <td>${info.price}</td>
                                <td>${info.ticket_num}</td>
                                <td><a href="${pageContext.request.contextPath}/buyTicket.action?train_id=${info.train_id}&ticket_date=${info.ticket_date}&start_station=${info.start_station}&start_time=${info.start_time}&train_style=${info.train_style}&train_class=${info.train_class}&arrive_station=${info.arrive_station}&price=${info.price}">点击购买</a></td>
                            </tr>
                            </c:forEach>
                            </tbody>

                        </table>
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
    function goToByScroll(id){
        $ = jQuery;
        $('html,body').animate({scrollTop: $("#"+id).offset().top},3000);
    }
</script>
<script type="text/javascript">
    $(document).ready(function(){
        $('.scrollbar1').tinyscrollbar();
    });
</script>
<script src="js/custom.js"></script>
<script src="js/myJS.js"></script>

</body>
</html>