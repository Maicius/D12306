/**
 * Created by Administrator on 2017/3/14 0014.
 */

jQuery(document).ready(function(){
    $ = jQuery;



    //订单详情出发弹窗
    $('.oder_info_more').click(function () {
        $('.oder-detail-popup-wrapper').fadeIn('slow',function(){
            $(this).children('#detail-popup').fadeIn('fast');
        });
    });

    //关闭按钮点击事件
    $('.detail_close').click(function(){
        $(this).parents('.oder-detail-popup-wrapper').fadeOut('slow');
        $(this).parent('#detail-popup').fadeOut('slow');
    });

    //退票按钮点击事件
    $('.ticket_refund_serve').click(function(){
        $(this).parents('.oder-detail-popup-wrapper').fadeOut('slow');
        $(this).parent('#detail-popup').fadeOut('slow');
    });

    //改签按钮点击事件
    $('.ticket_endorse_serve').click(function(){
        $(this).parents('.oder-detail-popup-wrapper').fadeOut('slow');
        $(this).parent('#detail-popup').fadeOut('slow');
    });

    $('#oder_show_button').click(function () {
       //if($('#order_view_div').is(':hidden')){
         //  $('#order_view_div').show();
          // $('#refund_view_div').hide();
       //}
        $('.right_view_class').hide('fast');
        $('#order_view_div').show('slow');

    });

    $('#refund_show_button').click(function () {
        //if($('#refund_view_div').is(':hidden')){
        //    $('#refund_view_div').show();
        //    $('#order_view_div').hide();
        //}
        $('.right_view_class').hide('fast');
        $('#refund_view_div').show('slow');
    });

    $('#endorse_show_button').click(function () {
        //if($('#refund_view_div').is(':hidden')){
        //    $('#refund_view_div').show();
        //    $('#order_view_div').hide();
        //}
        $('.right_view_class').hide('fast');
        $('#endorse_view_div').show('slow');
    });


    $('#afterSale_show_button').click(function () {
        //if($('#refund_view_div').is(':hidden')){
        //    $('#refund_view_div').show();
        //    $('#order_view_div').hide();
        //}
        $('.right_view_class').hide('fast');
        $('#afterSale_view_div').show('slow');
    });





//浮窗退票按钮点击事件
    $('#refund_floatWindow_button').click(function () {
        //if($('#refund_view_div').is(':hidden')){
        //    $('#refund_view_div').show();
        //    $('#order_view_div').hide();
        //}
        $('.right_view_class').hide('fast');
        $('#refund_view_div').show('slow');
    });



    //浮窗改签按钮点击事件
    $('#endorse_floatWindow_button').click(function () {
        //if($('#refund_view_div').is(':hidden')){
        //    $('#refund_view_div').show();
        //    $('#order_view_div').hide();
        //}
        $('.right_view_class').hide('fast');
        $('#endorse_view_div').show('slow');
    });

    //点击修改后切换div
    /*$('.modify_calss').click(function () {
        var id = $(this).attr('id');
        $("#"+id+"_tr1").hide();
        $("#"+id+"_tr2").show();
    });*/


});


function update(index) {
    $("#"+index+"_tr1").hide();
    $("#"+index+"_tr2").show();
}

document.getElementById("login-button").onclick =  function () {

        var value = document.getElementById("user_name_show").innerHTML;
        if (value != null) {
            document.getElementById("flag").innerHTML = "1";
        }

};


document.getElementById("user_logout").onclick = function () {
    //清空session的值
    alert("点击触发");
    $.ajax({
        url:"/logout.action",
        type:"get",
        //data:{username:'',password:""},

        success:function (data) {
            var returnData = data;

            document.getElementById("top_menu_log").style.display = "block";

            document.getElementById("top_menu_logout").style.display = "none";



        }
    });


};


/*
if (document.getElementById("flag").innerHTML == "1"){
    document.getElementById("top_menu_log").style.display = "none";
    document.getElementById("top_menu_logout").style.display = "block";
}else if(document.getElementById("flag").innerHTML == "0"){
    document.getElementById("top_menu_logout").style.display = "none";
    document.getElementById("top_menu_log").style.display = "block";
}
*/

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

//个人信息修改控制
document.getElementById("info_reset_button").onclick=function () {
    alert("修改按钮");
    var elements =document.getElementsByClassName("info_reset_class");
    var i;
    for (i = 0; i < elements.length; i++) {

        elements[i].removeAttribute("disabled");
    }
    document.getElementById("hidden_part").style.display = "block";
    document.getElementById("click_hidden").style.display = "none";
    document.getElementById("info_reset_submit").style.display = "inline-block";
    document.getElementById("info_reset_button").style.display = "none";

}

//用户信息修改确认提交表单
document.getElementById("info_reset_submit").onclick=function () {

}