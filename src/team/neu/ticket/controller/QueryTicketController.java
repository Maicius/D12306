package team.neu.ticket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import team.neu.ticket.User.QueryInfo;
import team.neu.ticket.service.TicketService;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Maicius on 2017/3/13.
 */
@Controller
public class QueryTicketController {
    @Autowired
    TicketService ticketService;
    QueryInfo queryInfo = new QueryInfo();
    ModelAndView mv = new ModelAndView();
    @RequestMapping(value = "queryTicket")
    public ModelAndView queryTicket(HttpServletRequest request,
                                    @RequestParam(value="from_location") String start_station,
                                    @RequestParam(value="to_location") String end_station,
                                    @RequestParam(value="ticket_date") String ticket_date) throws Exception{

        queryInfo.setStart_station(start_station);
        queryInfo.setEnd_station(end_station);
        queryInfo.setTicket_date(ticket_date);

        ticketService.doFirstQuery(queryInfo);
    }

}
