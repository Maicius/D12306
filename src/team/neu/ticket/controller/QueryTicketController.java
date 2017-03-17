package team.neu.ticket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import team.neu.ticket.User.QueryInfo;
import team.neu.ticket.User.TicketInfo;
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
public class QueryTicketController {
    @Autowired
    TicketService ticketService;
    QueryInfo queryInfo = new QueryInfo();

    @RequestMapping(value = "/queryTicket")
    public ModelAndView queryTicket(@RequestParam(value="from_station") String start_station,
                                    @RequestParam(value="to_station") String arrive_station,
                                    @RequestParam(value="ticket_date") String ticket_date) throws Exception{
        ModelAndView mv = new ModelAndView();

        queryInfo.setStart_station(start_station);
        queryInfo.setArrive_station(arrive_station);
        queryInfo.setTicket_date(ticket_date);

        List<QueryInfo> queryInfos =  ticketService.doFirstQuery(queryInfo);
        mv.addObject("queryInfos",queryInfos);
        mv.setViewName("purchase");
        System.out.println("Query Server Finished!"+ queryInfos.toString());
        return mv;
    }

    @ResponseBody
    @RequestMapping(value = "/buyTicket")
    public ModelAndView buyTicket(HttpServletRequest request,
                                  @RequestParam(value="train_id") String train_id,
                                  @RequestParam(value="start_station")  String start_station,
                                  @RequestParam(value="ticket_date") String ticket_date,
                                  @RequestParam(value="start_time") String start_time,
                                  @RequestParam(value="train_style") String train_style,
                                  @RequestParam(value="train_class") String train_class,
                                  @RequestParam(value="arrive_station") String arrive_station,
                                  @RequestParam(value="price") String price_S) throws  Exception{
        ModelAndView mv = new ModelAndView();
        int compart_id = (int)(Math.random()*10) +1;
        int seat_id = (int)(Math.random()*100)+1;

        HttpSession session = request.getSession();
        Object real_name = session.getAttribute("real_name");
        Object user_idcard_num = session.getAttribute("user_idcard_num");
        Object passenger_type = session.getAttribute("passenger_type");
        //System.out.println(real_name.toString());
        double price;
        try {
            price = Long.parseLong(price_S);
        }catch(Exception e){
            price = Double.parseDouble(price_S);
        }
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        TicketInfo ticketInfo = new TicketInfo(train_id, ticket_date, start_time,
                                                compart_id, seat_id, start_station,
                                                arrive_station, price, String.valueOf(real_name),
                                                String.valueOf(passenger_type), String.valueOf(user_idcard_num),
                                                "online", df.format(new Date()),
                                                train_style, train_class, "售出");

        int ticketSuccess = ticketService.buyTicket(ticketInfo);
        int ticketLeft = ticketService.updateTickets(ticketInfo);
        int orderInfo = ticketService.updateOrder(ticketInfo);
        System.out.println(ticketSuccess);
        System.out.println("Left:"+ticketLeft);
        System.out.println("Order:"+orderInfo);
        mv.addObject("ticketInfo",ticketInfo);
        mv.setViewName("");
        return mv;
    }

}
