/**
 * Created by Administrator on 2017/3/14 0014.
 */

jQuery(document).ready(function(){
    $ = jQuery;

    //管理员登陆
    $('#user_login').click(function(){
        $('.login-popup-wrapper').fadeIn('slow',function(){
            $(this).children('#login-popup').fadeIn('fast');
            $(this).children('#login-popup').children('#title').innerHTML = "管理员入口";
        });
    });
    $('.close').click(function(){
        $(this).parents('.login-popup-wrapper').fadeOut('slow');
        $(this).parent('#login-popup').fadeOut('slow');
    });

    //订单详情出发弹窗
    $('.oder_info_more').click(function () {

    });

});
