package team.neu.ticket.mapper;

import team.neu.ticket.User.OrderInfo;

import java.util.List;

/**
 * Created by Maicius on 2017/3/15.
 */
public interface OrderServe {
    List<OrderInfo> orderQuery(String user_id);
    int doStateChange(int order_id);
    OrderInfo orderQueryID(Integer order_id);
}
