package team.neu.ticket.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import team.neu.ticket.User.QueryInfo;
import team.neu.ticket.User.TicketInfo;
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

    public int buyTicket(TicketInfo ticketInfo) throws Exception{
        return ticketMapper.doBuyTicket(ticketInfo);
    }

    @Override
    public List<TicketInfo> queryTicketId(TicketInfo ticketInfo) throws Exception {
        return null;
    }

    @Override
    public boolean checkExist(int compart_id, int seat_no, int ticket_id) throws Exception {
        return false;
    }

    @Override
    public int updateTickets(TicketInfo ticketInfo) throws Exception {
        return ticketMapper.doUpdateTickets(ticketInfo);
    }

    @Override
    public int updateOrder(TicketInfo ticketInfo) throws Exception {
        return ticketMapper.doUpdateOrder(ticketInfo);
    }
}
