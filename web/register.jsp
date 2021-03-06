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

                        <form action="userRegister.action" method="get">

                            <div class="my_top userInfoBorder">
                                <div class="lay-hd">
                                    <strong><h4 style="color: white">用户注册</h4></strong>
                                </div>


                                <ul class="reg-list">
                                    <li>
                                        <div class="my_register_label">
                                            <span class="required">*</span>
                                            用 户 名：
                                        </div>
                                        <div class="r-txt">
                                            <input placeholder="用户名设置成功后不可修改" class="inptxt w200"
                                                   name="loginUserDTO.user_name" id="user_Name" maxlength="30"
                                                   style="color: rgb(51, 51, 51);" type="text">
                                        </div>
                                        <div class="tips" id="username_tip">
                                            <span id="iok_userName" class="tips i-ok"
                                                  style="margin-top: 10px;margin-right: 5px;display:none;">

                                            </span>
                                            6-30位字母、数字或“_”,字母开头
                                        </div>
                                    </li>

                                    <li>
                                        <div class="my_register_label">
                                            <span class="required">*</span>
                                            登录密码：
                                        </div>
                                        <div class="r-txt">
                                            <input placeholder="6-20位字母、数字或符号"
                                                   onkeyup="PasswordStrength()"
                                                   class="inptxt w200" name="userDTO.password" id="pass_word"
                                                   maxlength="25" style="color: rgb(51, 51, 51);" type="password" >
                                        </div>
                                        <div class="tips" id="password_tip">

                                        </div>
                                    </li>
                                    <li>
                                        <div class="my_register_label">
                                            <span class="required">*</span>
                                            确认密码：
                                        </div>
                                        <div class="r-txt">
                                            <input placeholder="再次输入您的登录密码" class="inptxt w200" name="confirmPassWord"
                                                   id="confirmPassWord" maxlength="25" style="color: rgb(51, 51, 51);"
                                                   type="password" onblur="confirmPassword()">
                                        </div>
                                        <div class="tips" id="password_confirm_tip"><span id="iok_confirmPassWord" class="tips i-ok"
                                                                style="margin-top: 10px;margin-right: 5px;display:none;"></span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="my_register_label"><span class="required">*</span>
                                            姓 名：
                                        </div>
                                        <div class="r-txt"><input placeholder="请输入姓名" class="inptxt w200"
                                                                  name="loginUserDTO.name" maxlength="30" type="text">
                                        </div>
                                        <div class="tips" id="real_name_tip">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="my_register_label"><span class="required">*</span>
                                            证件类型：
                                        </div>
                                        <div class="r-txt"><select class="w200sel valid"
                                                                   name="loginUserDTO.id_type_code" id="cardType">
                                            <option value="1">二代身份证
                                            </option>
                                            <option value="C">港澳通行证
                                            </option>
                                            <option value="G">台湾通行证
                                            </option>
                                            <option value="B">护照
                                            </option>
                                        </select>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="my_register_label"><span class="required">*</span>
                                            证件号码：
                                        </div>
                                        <div class="r-txt">
                                            <div class="pos-rel"><input placeholder="请输入您的证件号码"
                                                                        name="loginUserDTO.id_no" id="cardCode"
                                                                        class="inptxt w200 color333" maxlength="18"
                                                                        value="" type="text"
                                                                        onblur="testIdCard()">
                                                <div class="inp-focus inp-focus-card" id="cardCode_div"
                                                     style="display: none"> </div>
                                            </div>
                                        </div>
                                        <div class="tips" id="idCard_tip">

                                        </div>
                                    </li>
                                    <li class="cardLi" style="display: none;">
                                        <div class="my_register_label"><span class="required">*</span>
                                            性 别：
                                        </div>
                                        <div class="r-txt"><span class="mr25"><input name="userDTO.sex_code" value="M"
                                                                                     type="radio">
<label>男</label>
</span>
                                            <span><input name="userDTO.sex_code" value="F" type="radio">
<label>女</label>
</span>
                                        </div>
                                    </li>
                                    <li style="display: none;" class="gjLi">
                                        <div class="my_register_label"><span class="required">*</span>
                                            国家/地区：
                                        </div>
                                        <div class="r-txt"><select class="w200sel" name="userDTO.country_code"
                                                                   id="nation">
                                            <option value="CN">中国CHINA
                                            </option>
                                            <option value="US">美国UNITEDSTATES
                                            </option>
                                            <option value="AF">阿富汗AFGHANISTANA
                                            </option>
                                            <option value="AL">阿尔巴尼亚ALBANIA
                                            </option>
                                            <option value="DZ">阿尔及利亚ALGERIA
                                            </option>
                                            <option value="AD">安道尔ANDORRA
                                            </option>
                                            <option value="AO">安哥拉ANGOLA
                                            </option>
                                            <option value="AG">安提瓜和巴布达ANTIGUABARBUDA
                                            </option>
                                            <option value="AE">阿拉伯联合酋长国ARAB
                                            </option>
                                            <option value="AR">阿根廷ARGENTINA
                                            </option>
                                            <option value="AM">亚美尼亚ARMENIA
                                            </option>
                                            <option value="AW">阿鲁巴ARUBA
                                            </option>
                                            <option value="AU">澳大利亚AUSTRALIA
                                            </option>
                                            <option value="AT">奥地利AUSTRIA
                                            </option>
                                            <option value="AZ">阿塞拜疆共和国AZERBAIJAN
                                            </option>
                                            <option value="BS">巴哈马BAHAMAS
                                            </option>
                                            <option value="BH">巴林BAHRAIN
                                            </option>
                                            <option value="BD">孟加拉国BANGLADESH
                                            </option>
                                            <option value="BB">巴巴多斯BARBADOS
                                            </option>
                                            <option value="BY">白俄罗斯BELARUS
                                            </option>
                                            <option value="BE">比利时BELGIUM
                                            </option>
                                            <option value="BZ">伯里兹BELIZE
                                            </option>
                                            <option value="BZ">伯利兹BELIZE
                                            </option>
                                            <option value="BJ">贝宁BENIN
                                            </option>
                                            <option value="BT">不丹BHUTAN
                                            </option>
                                            <option value="BO">玻利维亚BOLIVIA
                                            </option>
                                            <option value="BA">波斯尼亚和黑塞哥维那BOSNIA
                                            </option>
                                            <option value="BW">博茨瓦纳BOTSWANA
                                            </option>
                                            <option value="BR">巴西BRAZIL
                                            </option>
                                            <option value="BG">保加利亚BULGARIA
                                            </option>
                                            <option value="BF">布基纳法索BURKINAFASO
                                            </option>
                                            <option value="BI">布隆迪BURUNDI
                                            </option>
                                            <option value="BN">文莱BruneiDarussalam
                                            </option>
                                            <option value="KH">柬埔寨CAMBODIA
                                            </option>
                                            <option value="CM">喀麦隆CAMEROON
                                            </option>
                                            <option value="CA">加拿大CANADA
                                            </option>
                                            <option value="KY">佛得角CAPEVERDE
                                            </option>
                                            <option value="TD">乍得CHAD
                                            </option>
                                            <option value="CL">智利CHILE
                                            </option>
                                            <option value="CO">哥伦比亚COLOMBIA
                                            </option>
                                            <option value="CO">哥伦比亚COLUMBIA
                                            </option>
                                            <option value="KM">科摩罗COMOROS
                                            </option>
                                            <option value="CG">刚果（布）CONGO
                                            </option>
                                            <option value="CK">库克群岛COOKISLANDS
                                            </option>
                                            <option value="CI">科特迪瓦COTEDLVOIRE
                                            </option>
                                            <option value="HR">克罗地亚CROATIA
                                            </option>
                                            <option value="CU">古巴共和国CUBA
                                            </option>
                                            <option value="CY">塞浦路斯CYPRUS
                                            </option>
                                            <option value="CZ">捷克共和国CZECHREPUBLIC
                                            </option>
                                            <option value="CF">中非共和国Central Africa Republic
                                            </option>
                                            <option value="CRC">哥斯达黎加CostaRica
                                            </option>
                                            <option value="CD">刚果（金）DEMOCRATIC REPUBLIC OF CONGO
                                            </option>
                                            <option value="YD">也门民主人民共和国DEMOCRATICYEMEN
                                            </option>
                                            <option value="DK">丹麦DENMARK
                                            </option>
                                            <option value="DJ">吉布提DJIBOUTI
                                            </option>
                                            <option value="DM">多米尼克DOMINICA
                                            </option>
                                            <option value="DO">多米尼加DOMINICAN REPUBLIC
                                            </option>
                                            <option value="EC">厄瓜多尔ECUADOR
                                            </option>
                                            <option value="EG">埃及EGYPT
                                            </option>
                                            <option value="EV">萨尔瓦多EL SALVADOR
                                            </option>
                                            <option value="GQ">赤道几内亚EQUATORIALGUINEA
                                            </option>
                                            <option value="ER">厄立特里亚ERITREA
                                            </option>
                                            <option value="EE">爱沙尼亚ESTONIA
                                            </option>
                                            <option value="ET">埃塞俄比亚ETHIOPIA
                                            </option>
                                            <option value="FJ">斐济FIJI
                                            </option>
                                            <option value="FI">芬兰FINLAND
                                            </option>
                                            <option value="FR">法国FRANCE
                                            </option>
                                            <option value="GA">加蓬GABON
                                            </option>
                                            <option value="GM">冈比亚GAMBIA
                                            </option>
                                            <option value="CE">格鲁吉亚GEORGIA
                                            </option>
                                            <option value="DE">德国GERMANY
                                            </option>
                                            <option value="GH">加纳GHANA
                                            </option>
                                            <option value="GR">希腊GREECE
                                            </option>
                                            <option value="GL">格林纳达GRENADA
                                            </option>
                                            <option value="GN">几内亚GUINEA
                                            </option>
                                            <option value="GW">几内亚比绍GUINEA-BISSAU
                                            </option>
                                            <option value="GW">几内亚比绍GUINEABISSAU
                                            </option>
                                            <option value="GY">圭亚那GUYANA
                                            </option>
                                            <option value="GT">危地马拉Guatemala
                                            </option>
                                            <option value="HT">海地HAITI
                                            </option>
                                            <option value="NL">荷兰HOLLAND
                                            </option>
                                            <option value="HN">洪都拉斯HONDURAS
                                            </option>
                                            <option value="HU">匈牙利HUNGARY
                                            </option>
                                            <option value="IS">冰岛ICELAND
                                            </option>
                                            <option value="IN">印度INDIA
                                            </option>
                                            <option value="ID">印度尼西亚INDONESIA
                                            </option>
                                            <option value="IR">伊朗IRAN
                                            </option>
                                            <option value="IQ">伊拉克IRAQ
                                            </option>
                                            <option value="IE">爱尔兰IRELAND
                                            </option>
                                            <option value="IL">以色列ISRAEL
                                            </option>
                                            <option value="IT">意大利ITALY
                                            </option>
                                            <option value="JM">牙买加JAMAICA
                                            </option>
                                            <option value="JP">日本JAPAN
                                            </option>
                                            <option value="JO">约旦JORDAN
                                            </option>
                                            <option value="KZ">哈萨克斯坦KAZAKHSTAN
                                            </option>
                                            <option value="KE">肯尼亚KENYA
                                            </option>
                                            <option value="KG">吉尔吉斯共和国KIRGIZSTAN
                                            </option>
                                            <option value="KI">基里巴斯KIRIBATI
                                            </option>
                                            <option value="KR">韩国KOREA
                                            </option>
                                            <option value="KW">科威特KUWAIT
                                            </option>
                                            <option value="DPR">朝鲜Korea
                                            </option>
                                            <option value="LA">老挝LAOS
                                            </option>
                                            <option value="LV">拉脱维亚LATVIA
                                            </option>
                                            <option value="LB">黎巴嫩LEBANON
                                            </option>
                                            <option value="LS">莱索托LESOTHO
                                            </option>
                                            <option value="LR">利比里亚LIBERIA
                                            </option>
                                            <option value="LY">利比亚LIBYA
                                            </option>
                                            <option value="LI">列支敦士登LIECHTENSTEIN
                                            </option>
                                            <option value="LT">立陶宛LITHUANIA
                                            </option>
                                            <option value="LU">卢森堡LUXEMBOURG
                                            </option>
                                            <option value="MK">马其顿MACEDONIA
                                            </option>
                                            <option value="MG">马达加斯加MADAGASCAR
                                            </option>
                                            <option value="MW">马拉维MALAWI
                                            </option>
                                            <option value="MY">马来西亚MALAYSIA
                                            </option>
                                            <option value="MV">马尔代夫MALDIVES
                                            </option>
                                            <option value="ML">马里MALI
                                            </option>
                                            <option value="MT">马耳他MALTA
                                            </option>
                                            <option value="MH">马绍尔群岛MARSHALL ISLANDS
                                            </option>
                                            <option value="MR">毛里塔尼亚MAURITANIA
                                            </option>
                                            <option value="MU">毛里求斯MAURITIUS
                                            </option>
                                            <option value="MX">墨西哥MEXICO
                                            </option>
                                            <option value="FM">密克罗尼西亚联邦MICRONESIA
                                            </option>
                                            <option value="MD">摩尔多瓦MOLDOVA
                                            </option>
                                            <option value="MC">摩纳哥MONACO
                                            </option>
                                            <option value="MN">蒙古MONGOLIA
                                            </option>
                                            <option value="ME">黑山MONTENEGRO
                                            </option>
                                            <option value="MA">摩洛哥MOROCCO
                                            </option>
                                            <option value="MZ">莫桑比克MOZAMBIQUE
                                            </option>
                                            <option value="MM">缅甸MYANMAR
                                            </option>
                                            <option value="NA">纳米比亚NAMIBIA
                                            </option>
                                            <option value="NR">瑙鲁NAURU
                                            </option>
                                            <option value="NP">尼泊尔NEPAL
                                            </option>
                                            <option value="NZ">新西兰NEWZEALAND
                                            </option>
                                            <option value="NI">尼加拉瓜NICARAGUA
                                            </option>
                                            <option value="NE">尼日尔NIGER
                                            </option>
                                            <option value="NG">尼日利亚NIGERIA
                                            </option>
                                            <option value="NO">挪威NORWAY
                                            </option>
                                            <option value="OM">阿曼OMAN
                                            </option>
                                            <option value="PK">巴基斯坦PAKISTAN
                                            </option>
                                            <option value="PW">帕劳PALAU
                                            </option>
                                            <option value="BL">巴勒斯坦PALESTINE
                                            </option>
                                            <option value="PA">巴拿马PANAMA
                                            </option>
                                            <option value="PG">巴布亚新几内亚PAPUANEWGUINEA
                                            </option>
                                            <option value="PY">巴拉圭PARAGUAY
                                            </option>
                                            <option value="PE">秘鲁PERU
                                            </option>
                                            <option value="PH">菲律宾PHILIPPINES
                                            </option>
                                            <option value="PL">波兰POLAND
                                            </option>
                                            <option value="PT">葡萄牙PORTUGAL
                                            </option>
                                            <option value="PR">波多黎各PUERTO RICO
                                            </option>
                                            <option value="QA">卡塔尔QATAR
                                            </option>
                                            <option value="RO">罗马尼亚ROMANIA
                                            </option>
                                            <option value="RU">俄罗斯RUSSIA
                                            </option>
                                            <option value="RW">卢旺达RWANDA
                                            </option>
                                            <option value="KNA">圣基茨和尼维斯SAINT KITTS
                                            </option>
                                            <option value="VC">圣文森特和格林纳丁斯SAINT VINCENT AND THE GRENADIN
                                            </option>
                                            <option value="LC">圣卢西亚SAINTLUCIA
                                            </option>
                                            <option value="WS">美属萨摩亚SAMOA
                                            </option>
                                            <option value="SM">圣马力诺SANMARINO
                                            </option>
                                            <option value="ST">圣多美和普林西比SAOTOMEPRINCIPE
                                            </option>
                                            <option value="SA">沙特阿拉伯SAUDIARABIA
                                            </option>
                                            <option value="SN">塞内加尔SENEGAL
                                            </option>
                                            <option value="CS">塞尔维亚SERBIA
                                            </option>
                                            <option value="SC">塞舌尔SEYCHELLES
                                            </option>
                                            <option value="SL">塞拉利昂SIERRALEONE
                                            </option>
                                            <option value="SG">新加坡SINGAPORE
                                            </option>
                                            <option value="SK">斯洛伐克SLOVAKIA
                                            </option>
                                            <option value="SK">斯洛伐克共和国SLOVAKREPUBLIC
                                            </option>
                                            <option value="SI">斯洛文尼亚SLOVENIA
                                            </option>
                                            <option value="SB">所罗门群岛SOLOMON ISLANDS
                                            </option>
                                            <option value="SO">索马里SOMALI
                                            </option>
                                            <option value="SO">索马里SOMALIA
                                            </option>
                                            <option value="ZA">南非SOUTHAFRICA
                                            </option>
                                            <option value="ES">西班牙SPAIN
                                            </option>
                                            <option value="LK">斯里兰卡SRILANKA
                                            </option>
                                            <option value="SD">苏丹SUDAN
                                            </option>
                                            <option value="SR">苏里南SURINAM
                                            </option>
                                            <option value="SZ">斯威士兰SWAZILAND
                                            </option>
                                            <option value="SE">瑞典SWEDEN
                                            </option>
                                            <option value="CH">瑞士SWITZERLAND
                                            </option>
                                            <option value="SY">叙利亚SYRIA
                                            </option>
                                            <option value="TJ">塔吉克斯坦TAJIKISTAN
                                            </option>
                                            <option value="TZ">坦桑尼亚TANZANIA
                                            </option>
                                            <option value="TH">泰国THAILAND
                                            </option>
                                            <option value="SS">南苏丹共和国THE REPBLIC OF SOUTH SUDAN
                                            </option>
                                            <option value="UGA">乌干达THE REPUBLIC OF UGANDA
                                            </option>
                                            <option value="TL">东帝汶TIMOR
                                            </option>
                                            <option value="TG">多哥TOGO
                                            </option>
                                            <option value="TO">汤加TONGA
                                            </option>
                                            <option value="TT">特立尼达和多巴哥TRINIDADANDTOBAGO
                                            </option>
                                            <option value="TN">突尼斯TUNISIA
                                            </option>
                                            <option value="TR">土耳其TURKEY
                                            </option>
                                            <option value="TM">土库曼斯坦TURKMENISTAN
                                            </option>
                                            <option value="UKR">乌克兰UKRAINE
                                            </option>
                                            <option value="GB">英国UNITED KINGDOM
                                            </option>
                                            <option value="UZB">乌兹别克斯坦UZBEKISTAN
                                            </option>
                                            <option value="UY">乌拉圭Uruguay
                                            </option>
                                            <option value="VU">瓦努阿图VANUATU
                                            </option>
                                            <option value="VA">梵蒂冈VATICAN
                                            </option>
                                            <option value="VIE">越南VIETNAM
                                            </option>
                                            <option value="VE">委内瑞拉Venezuela
                                            </option>
                                            <option value="ZM">赞比亚ZAMBIA
                                            </option>
                                            <option value="ZW">津巴布韦ZIMBABWE
                                            </option>
                                        </select>
                                        </div>
                                    </li>
                                    <li style="display: none;" class="cardLi">
                                        <div class="my_register_label"><span class="required">*</span>
                                            出生日期：
                                        </div>
                                        <div class="r-txt"><input class="inptxt w200 color333" name="userDTO.born_date"
                                                                  id="born_date" value="1900-01-01" readonly="readonly"
                                                                  type="text">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="my_register_label">邮 箱：</div>
                                        <div class="r-txt">
                                            <ul style="position: absolute; margin-top: 30px; min-width: 200px; visibility: hidden; z-index: 11;"
                                                class="emailist"></ul>
                                            <input placeholder="请正确填写邮箱地址" id="email" name="userDTO.email"
                                                   class="inptxt w200 inp-transform" autocomplete="off" type="text"
                                            onblur="testEmail()">
                                        </div>
                                        <div class="tips" name="email_tip" id="email_tip"></div>
                                    </li>
                                    <li>
                                        <div class="my_register_label"><span class="required">*</span>
                                            手机号码：
                                        </div>
                                        <div class="r-txt">
                                            <div class="pos-rel"><input placeholder="请输入您的手机号码" name="userDTO.mobile_no"
                                                                        class="inptxt w200 color333" id="mobileNo"
                                                                        maxlength="30" value="" type="text" onblur="testMobile()">
                                            </div>
                                        </div>
                                        <div class="tips" name="tip" id="phone_tip" style="color: #FF7F00;"> </div>
                                    </li>
                                    <li>
                                        <div class="my_register_label"><span class="required">*</span>
                                            旅客类型：
                                        </div>
                                        <div class="r-txt"><select class="w200sel" id="passengerType"
                                                                   name="passenger_type">
                                            <option value="1">成人</option>
                                            <option value="2">儿童</option>
                                            <option value="3">学生</option>
                                            <option value="4">残疾军人、伤残人民警察</option>
                                        </select>
                                        </div>
                                        <div class="tips"><a href="#nogo" shape="rect"></a>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="my_register_label" style="width:373px;">&nbsp;</div>
                                        <div class="r-txt"><input class="check" id="checkAgree" type="checkbox">
                                            <span style="font-size: 14px;"><label for="checkAgree">我已阅读并同意遵守</label>
</span>
                                            <a href="/otn/regist/rule" class="ft14" target="_blank" shape="rect">《中国铁路客户服务中心网站服务条款》</a>
                                        </div>
                                    </li>

                                </ul>
                                <div id="register_button_div" class="register_button_div">
                                    <input type="submit" id="register"  class="register_submit_button">注册</input>
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
<script type="text/javascript">
    function isCardNo(card)
    {
        // 身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X  
        var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
        if(reg.test(card) === false)
        {
            return  "错误的证件号码";
        }
        else{
            return "";
        }
    }
    function testIdCard() {
        var Id =document.getElementById("cardCode").value;
        var card = isCardNo(Id);
        document.getElementById("idCard_tip").innerHTML=card;
    }
    function confirmPassword(){
        var pass = document.getElementById("pass_word").value;
        var passConfir = document.getElementById("confirmPassWord").value;
        if(pass != passConfir){
            document.getElementById("password_confirm_tip").innerHTML="两次密码不一致";
        }else{
            document.getElementById("password_confirm_tip").innerHTML="";
        }
    }
    function testEmail(){
        var email=document.getElementById("email").value;
        var reg=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
        if(!reg.test(email)){
            document.getElementById("email_tip").innerHTML = "请输入正确的邮箱";
        }else{
            document.getElementById("email_tip").innerHTML = "";
        }
    }
    function testMobile(){
        var mobile = document.getElementById("mobileNo").value;
        var reg=/^[1][3578]\d{9}$/;
        //alert(reg.test(mobile))
        if(!reg.test(mobile)){
            document.getElementById("phone_tip").innerHTML = "请输入正确的手机号";
        }else{
            document.getElementById("phone_tip").innerHTML = "";
        }
    }
</script>
<script src="js/custom.js"></script>

</body>
</html>