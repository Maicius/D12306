package team.neu.ticket.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import team.neu.ticket.User.QueryInfo;
import team.neu.ticket.mapper.TicketMapper;
import team.neu.ticket.service.TicketService;

import java.util.List;

/**
 * Created by Maicius on 2017/3/13.
 */
public class TicketServiceImpl implements TicketService {
    @Autowired
    TicketMapper ticketMapper;
    public List<QueryInfo> doFirstQuery(QueryInfo queryInfo) throws Exception{
        return ticketMapper.doFirstQuery(queryInfo);
    }

    public int buyTicket(QueryInfo queryInfo) throws Exception{
        return ticketMapper.doBuyTicket(queryInfo);
    }
}
