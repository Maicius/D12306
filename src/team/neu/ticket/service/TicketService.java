package team.neu.ticket.service;

import team.neu.ticket.User.QueryInfo;
import team.neu.ticket.User.TicketInfo;

import java.util.List;

/**
 * Created by Maicius on 2017/3/13.
 */
public interface TicketService {
    public List<QueryInfo> doFirstQuery(QueryInfo queryInfo) throws Exception;
    public int buyTicket(TicketInfo TicketInfo) throws Exception;
    public int updateTickets(TicketInfo ticketInfo) throws Exception;
    public int updateOrder(TicketInfo ticketInfo) throws Exception;
}
