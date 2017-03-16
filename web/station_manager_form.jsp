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
                    <a href="index.html"><img src="images/logo.png" alt="Logo"></a>
                </div>
            </div>
            <!-- Logo -->

            <!--top Menu -->
            <div class="span8">
                <div class="top-menu">
                    <ul>

                        <li><a href="#" id="user_login">用户登录</a></li>
                        <li><a href="register.html" class="last" id="user_register">注册</a></li>
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
                        <li><a href="#">基础数据管理 </a></li>

                        <li><a href="#">车站管理</a></li>
                        <li><a href="#">列车管理</a></li>
                        <li><a href="#">余票查询</a></li>
                        <li><a href="#">列车时刻表查询</a></li>
                        <li><a href="#">票价查询</a></li>
                        <li><a href="#">改签</a></li>
                        <li><a href="userInfoPage.html">个人中心</a></li>
                        <li  class="last"><a href="oder_serve.html">我的订单</a></li>
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
                        <form action="/manageStation.action" method="get">
                            <div class="my_top">
                            <%--    <form action="/manageStation.action" method="get">--%>
                                <table>
                                    <tbody class="my_top_tbody">
                                        <tr>
                                            <td><p>车站代码<input type="text" placeholder="车站代码" name="station_id"></p></td>
                                            <td><p>车站名<input type="text" placeholder="车站名" name="station_name"></p></td>
                                            <td><p>拼音码<input type="text" placeholder="拼音码" name="station_code"></p></td>

                                            <td rowspan="3">
                                                <p><input type="submit" value="查询" class="register_submit_button"></p>
                                                <p><input type="submit" value="增加" class="register_submit_button"></p>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td><p>所属铁路局<input type="text" placeholder="所属铁路局" name="railway_admin"></p></td>
                                            <td><p>车站等级<select class="w200sel valid" name="station_class" id="station_class">
                                                <option value="">不限
                                                </option>
                                                <option value="一等">一等
                                                </option>
                                                <option value="二等">二等
                                                </option>
                                                <option value="三等">三等
                                                </option>
                                                <option value="四等">四等
                                                </option>
                                                <option value="五等">五等
                                                </option>

                                            </select></p></td>

                                            <td><p>所属行政区域<input type="text" placeholder="所属行政区域" name="station_region"></p></td>

                                        </tr>

                                        <tr>

                                            <td colspan="3"><p><input type="text" placeholder="联系地址" class="address_area_1" name="station_addr"></p></td>

                                        </tr>
                                    </tbody>
                                </table>
                               <%-- </form>--%>
                            </div>
                        </form>
                    </div>

                    <!--查询结果显示区域-->
                    <div class="content_result">
                        <table>
                            <thead>
                            <tr class="th" id="float">
                                <th colspan="1" rowspan="1" ><p>车站代码</p></th>
                                <th colspan="1" rowspan="1" ><p>车站名</p></th>
                                <th colspan="1" rowspan="1" ><p>拼音码</p></th>
                                <th colspan="1" rowspan="1" ><p>所属铁路局</p></th>
                                <th colspan="1" rowspan="1"><p>车站等级</p></th>
                                <th colspan="1" rowspan="1" ><p>所属行政区域</p></th>
                                <th colspan="1" rowspan="1" ><p>联系地址</p></th>
                                <th colspan="1" rowspan="1" ><p>操作一</p></th>
                                <th colspan="1" rowspan="1" ><p>操作二</p></th>
                            </tr>
                            </thead>
                            <tbody id="queryLeftTable">
                            <c:forEach items="${stationInfos}" var = "info">
                            <tr id="station_info">
                                <td><input type="text" value="${info.station_id}" readonly = "true"></td>
                                <td>${info.station_name}</td>
                                <td>${info.station_code}</td>
                                <td>${info.railway_admin}</td>
                                <td>${info.station_class}</td>
                                <td>${info.station_region}</td>
                                <td>${info.station_addr}</td>
                                <td><a href="#">删除</a></td>
                                <td><a href="#">修改</a></td>
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