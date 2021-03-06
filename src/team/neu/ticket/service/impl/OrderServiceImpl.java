package team.neu.ticket.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import team.neu.ticket.User.OrderInfo;
import team.neu.ticket.mapper.OrderServe;
import team.neu.ticket.service.OrderService;

import java.util.List;

public class OrderServiceImpl implements OrderService  {

    @Autowired
    OrderServe orderserve;


    @Override
    public List<OrderInfo> orderQuery(String user_id) throws Exception{
        return orderserve.orderQuery(user_id);
    }

    @Override
    public int doStateChange(int order_id) throws Exception{
        return orderserve.doStateChange(order_id);
    }

    @Override
    public OrderInfo orderQueryID(Integer order_id) throws Exception {
        return orderserve.orderQueryID(order_id);
    }
}
