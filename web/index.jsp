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
                                        <li><a href="oder_serve.html">退票</a></li>
                                        <li><a href="purchase.jsp">余票查询</a></li>
                                        <li><a href="purchase.jsp">票价查询</a></li>
                                        <li><a href="oder_serve.html">改签</a></li>
                                        <li><a href="userInfoPage.jsp">个人中心</a></li>
                                        <li  class="last"><a href="oder_serve.html">我的订单</a></li>
                                    </ul>
                                </nav>


                            </div>
                        </div>
                    </div>
                </div>
                <!-- Main Navigation -->
                <!-- Slider -->
				<div class="flexslider">
                	<ul class="slides">
                        <li>
                          <img src="http://placehold.it/1600x510" alt="Slider Image">
                          <div class="detail-one">
                            <h3>USA</h3>
                            <h2>Chicago Night street</h2>
                           	<span>$ 2.400</span>
                          	<a href="#"></a> 	
                          </div>
                        </li>
                        <li>
                          <img src="http://placehold.it/1600x510" alt="Slider Image">
                          <div class="detail-one">
                            <h3>Brazil</h3>
                            <h2>Brazil Night City Beach</h2>
                           	<span>$ 1.400</span>
                          	<a href="#"></a> 	
                          </div>
                        </li>
                    </ul>
                    
                    
                <!-- Reservation box -->
                <div id="accordion">
                  
                  <h3> <span class="flight">列车查询</span> <a href="#"></a> </h3>
                  <div class="detail">
                    <form action="queryTicket.action" method="get">
                   
                    <div class="location clearfix">
                    	
                        	<div class="pull-left">
                        		<label>出发地</label>
                        		<input id ="from_station" type="text" name="from_station" value="沈阳">
                        	</div>
                            <div class="pull-right">
                            	<label class="dst">到达地</label>
                            	<input id="to_station" type="text" name="to_station" value="成都">
                            </div>
                        
                    </div>
                    
                    <div class="location clearfix">
                    
                        	<div class="pull-left">
                        		<div class="date clearfix">
                        			<div class="Depart-Date">
                                    	<label>出发时间</label>
                        				<input id="ticket_date" type="text" name="ticket_date" value="03/20/2017" id="datepicker">
                                    </div>
                                    
                        		</div>
                        	</div>
                            <div class="pull-right">
                            	<div class="persons">
                                	<div class="ad">
                                    	<label>成人</label>
                        				<input type="text" name="adult" value="1" id="adult">
									</div>
                                    <div class="ad">
                                    	<label>小孩</label>
                        				<input type="text" name="children" value="0" id="Children">
									</div>
                                    <div>
                                    	<label>学生</label>
                        				<input type="text" name="student" value="0" id="Student">
									</div>
                                </div>
                            </div>
                    </div>
                    <div class="search">
                    	<input type="submit" name="search" value="开始查询" >
                    </div>

                    </form>
                </div>
                      
              
              
                <h3> <span class="vacation">Vacation</span> <a href="#"></a></h3>
                  <div class="detail">
                    <form action="#" method="post">
                    <div class="trip">
                    	<input type="radio" name="trip" value="Round-trip"><span>Roud-Trip</span>
                        <input type="radio" name="trip" value="onw-way"><span>One-way</span>
                    </div>
                    </form>
                  </div>
                </div>
                <!-- Reservation box -->

                </div>
                <!-- Slider -->
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
                <script src="js/ajaxVerify.js"></script>
                <script src="js/myJS.js"></script>
                <script type="text/javascript">
                    function checkUser(){
                        var phone_num = document.getElementById("username").value;
                        var ajaxRequest;
                        //alert("enter ajax："+phone_num);
                        if(window.XMLHttpRequest){
                            ajaxRequest = new XMLHttpRequest();
                        }else if(window.activeXObject){
                            ajaxRequest = new activeXObject("Microsoft.XMLHTTP");
                        }
                        if(ajaxRequest){
                            ajaxRequest.onreadystatechange = function(){
                               //alert("status:"+ajaxRequest.status);
                                if(ajaxRequest.readyState == 4 && ajaxRequest.status ==200){

                                    var msg = ajaxRequest.responseText;
                                   // alert(msg);
                                   // alert(document.getElementById("login_tip").innerHTML + "\n msg:" + msg);
                                   if(msg=="" ){
                                        document.getElementById("login_tip").innerHTML="当前用户不存在";
                                        document.getElementById("login_tip").style.color="red";

                                    }else{
                                       document.getElementById("login_tip").innerHTML="欢迎您,"+msg;
                                       document.getElementById("login_tip").style.color="green";


                                    }
                                }
                            }
                            ajaxRequest.open("get", "/userVerify.action?phone_num="+phone_num, true);
                            ajaxRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
                            ajaxRequest.send();
                        }
                    }
                </script>

		</body>
</html>