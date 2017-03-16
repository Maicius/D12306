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
    $('.modify_calss').click(function () {
        $('.modify_result_show_div').fadeOut('fast');
        $('.modify_show_div').fadeIn('slow');
    });

    $('.modify_affirm_class').click(function () {
        $('.modify_show_div').fadeOut('fast');
        $('.modify_result_show_div').fadeIn('slow');
    });



});
