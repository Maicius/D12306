<%@ page import="com.sun.org.apache.xpath.internal.operations.Div" %>
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
                        <li><a href="#">基础数据管理 </a>
                            <ul class="clearfix" style="display: none;">
                                <li><a href="station_manager_form.jsp">车站管理</a></li>
                                <li><a href="train_manager_form.jsp">列车管理</a></li>
                                <li><a href="rout_manager_form.html">线路管理</a></li>
                                <li><a href="traingroup_manager_form.jsp">列车编组管理</a></li>
                                <li><a href="ticket_rate_manager_form.jsp">票价率管理</a></li>
                                <li><a href="ticket_affair_manager_form.jsp">票价旅程区管理</a></li>
                                <li><a href="decreasing_increase_rate_manager_form.jsp">递远递减率管理</a></li>
                            </ul>
                        </li>

                        <li><a href="#">计划管理</a>
                            <ul class="clearfix" style="display: none;">
                                <li><a href="plan_manager_form.jsp">计划管理</a></li>
                            </ul>
                        </li>

                        <li><a href="#">调度管理</a>
                            <ul class="clearfix" style="display: none;">
                                <li><a href="dispatching_manager.jsp">调度管理</a></li>
                            </ul>
                            </a>
                        </li>
                        <li><a href="#">财务管理</a>
                            <ul class="clearfix" style="display: none;">
                                <li><a href="financial_statistics_manager.jsp">财务统计</a></li>
                            </ul>
                        </li>
                        <li><a href="#">客服</a>
                            <ul class="clearfix" style="display: none;">
                                <li><a href="userinfo_manager_form.jsp">用户管理</a></li>
                                <li><a href="oder_manager_form.jsp">订单维护</a></li>
                                <li><a href="ticket_manager_form.jsp">车票维护</a></li>
                            </ul>
                        </li>
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
                            <div class="my_top">
                                <!--<form action="" method="post">-->
                                <table>
                                    <tbody class="my_top_tbody">
                                        <tr>
                                            <td rowspan="2"><p><input type="text" placeholder="旅程区段编号" name=""></p></td>
                                            <td><p><input type="text" placeholder="里程区段From" name=""></p></td>
                                            <td><p><input type="text" placeholder="里程区段To" name=""></p></td>
                                            <td rowspan="2">
                                                <p><input type="submit" value="查询" class="register_submit_button"></p>
                                            </td>


                                        </tr>

                                        <tr>
                                            <td><p><input type="text" placeholder="每区段里程" name=""></p></td>
                                            <td><p><input type="text" placeholder="区段数" name=""></p></td>

                                        </tr>

                                    </tbody>
                                </table>
                                <!--</form>-->
                            </div>
                        </form>
                    </div>

                    <!--查询结果显示区域-->
                    <div class="content_result">
                        <table>
                            <thead>
                            <tr class="th" id="float">
                                <th colspan="1" rowspan="1" ><p>旅程区段编号</p></th>
                                <th colspan="1" rowspan="1" ><p>里程区段From</p></th>
                                <th colspan="1" rowspan="1" ><p>里程区段To</p></th>
                                <th colspan="1" rowspan="1" ><p>每区段里程</p></th>
                                <th colspan="1" rowspan="1" ><p>区段数</p></th>
                                <th colspan="1" rowspan="1" ><p>操作</p></th>
                            </tr>
                            </thead>
                            <tbody id="queryLeftTable">

                            <tr>
                                <td>中国二铁</td>
                                <td>国家级</td>
                                <td>国家级</td>
                                <td>四川省</td>
                                <td>四川省成都市</td>
                                <td><a href="#">修改</a></td>
                            </tr>


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
        <h2 >sign in</h2>
        <form method="get" action="#">
            <input type="text" value="" id="username" placeholder="用户名" />
            <input type="text" value="" id="password" placeholder="密码" />

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

</body>
</html>