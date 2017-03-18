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
import team.neu.ticket.service.TicketService;

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
    OrderServe orderServe;

    @RequestMapping(value = "/queryOrder")
    public ModelAndView queryOrder(@RequestParam(value="user_id") String user_id) throws Exception{
        ModelAndView mv = new ModelAndView();
        List<OrderInfo> orderInfos =  orderServe.orderQuery(user_id);

        System.out.println(orderInfos.toString());
        mv.addObject("orderInfos",orderInfos);
        mv.setViewName("oder_serve");
        return mv;
    }

}
