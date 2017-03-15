package team.neu.ticket.interceptor.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import team.neu.ticket.interceptor.User.QueryInfo;
import team.neu.ticket.interceptor.mapper.TicketMapper;
import team.neu.ticket.interceptor.service.TicketService;

import java.util.List;

/**
 * Created by Maicius on 2017/3/13.
 */
public class TicketServiceImpl implements TicketService{
    @Autowired
    TicketMapper ticketMapper;
    public List<QueryInfo> doFirstQuery(QueryInfo queryInfo) throws Exception{
        return ticketMapper.doFirstQuery(queryInfo);
    }
}
