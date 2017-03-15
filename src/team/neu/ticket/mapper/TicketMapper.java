package team.neu.ticket.mapper;

import team.neu.ticket.User.QueryInfo;

import java.util.List;

/**
 * Created by Maicius on 2017/3/13.
 */
public interface TicketMapper {
    public List<QueryInfo> doFirstQuery(QueryInfo queryInfo) throws Exception;
    public int doSecondQuery(QueryInfo queryInfo) throws Exception;
}
