package team.neu.ticket.interceptor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import team.neu.ticket.interceptor.User.QueryInfo;
import team.neu.ticket.interceptor.service.TicketService;

import javax.servlet.http.HttpServletRequest;
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

}
