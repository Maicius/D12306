package team.neu.ticket.mapper;

import team.neu.ticket.User.QueryInfo;
import team.neu.ticket.User.TicketInfo;

import java.util.List;

/**
 * Created by Maicius on 2017/3/13.
 */
public interface TicketMapper {
    public List<QueryInfo> doFirstQuery(QueryInfo queryInfo) throws Exception;
    public int doBuyTicket(TicketInfo ticketInfo) throws Exception;
    public int doUpdateTickets(TicketInfo ticketInfo) throws Exception;
    public int doUpdateOrder(TicketInfo ticketInfo) throws Exception;
}
