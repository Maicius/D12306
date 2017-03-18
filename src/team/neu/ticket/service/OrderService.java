package team.neu.ticket.service;

import team.neu.ticket.User.OrderInfo;


import java.util.List;


public interface OrderService {
    List<OrderInfo> orderQuery(String user_id);
}
