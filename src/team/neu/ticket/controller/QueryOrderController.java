package team.neu.ticket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import team.neu.ticket.User.OrderInfo;
import team.neu.ticket.User.QueryInfo;
import team.neu.ticket.User.TicketInfo;
import team.neu.ticket.mapper.OrderServe;
import team.neu.ticket.service.OrderService;
import team.neu.ticket.service.TicketService;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Maicius on 2017/3/13.
 */
@Controller
public class QueryOrderController {
    @Autowired
    OrderService orderService;

    @RequestMapping(value = "/queryOrder")
    public ModelAndView queryOrder(HttpServletRequest request,
                                       @RequestParam(value="user_id") String user_id) throws Exception{
        ModelAndView mv = new ModelAndView();
        List<OrderInfo> orderInfos =  orderService.orderQuery(user_id);
        System.out.println(user_id);
        System.out.println(orderInfos.toString());
        mv.addObject("orderInfos",orderInfos);
        mv.setViewName("oder_serve");
        return mv;
    }

    @RequestMapping(value = "/orderState")
    public ModelAndView orderState(HttpServletRequest request,
            @RequestParam(value="order_id") Integer order_id) throws Exception{
        ModelAndView mv = new ModelAndView();
        OrderInfo orderInfo = orderService.orderQueryID(order_id);
        HttpSession session = request.getSession();
        session.setAttribute("orderInfo", orderInfo);
        int result = orderService.doStateChange(order_id);
        if (result!=0){
            System.out.println("更改成功！！！！");
        }
        mv.setViewName("oder_serve");
        System.out.println("Query Server Finished!");
        return mv;
    }

    @ResponseBody
    @RequestMapping(value="/orderDetail")
    public String orderDetail(HttpServletRequest request,
                                    @RequestParam(value="order_id") Integer order_id) throws Exception{
        OrderInfo orderInfo = orderService.orderQueryID(order_id);
        HttpSession session = request.getSession();
        session.setAttribute("orderInfo", orderInfo);
        if(orderInfo !=null){
            return "success";
        }else{
            return "failed";
        }
    }

}
