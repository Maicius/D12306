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
    $('.detail_close').click(function(){
        $(this).parents('.oder-detail-popup-wrapper').fadeOut('slow');
        $(this).parent('#detail-popup').fadeOut('slow');
    });

});
