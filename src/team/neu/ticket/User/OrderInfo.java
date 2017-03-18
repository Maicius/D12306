package team.neu.ticket.User;

/**
 * Created by Administrator on 2017/3/18 0018.
 */
public class OrderInfo {
    private String username;//T_order
    private String order_state;//订单状态T_order
    private String order_time;//下单时间T_order
    private String train_id;//车次//T_ticket_info
    private String begin_zone_station;//始发地T_ticket_info
    private String arrive_zone_station;//目的地T_ticket_info
    private String train_time;//出发时间T_ticket_info

    private String train_style;//列车类型T_ticket_info
    private String ticket_price;//T_ticket_info


    public void setUsername(String username) {
        this.username = username;
    }

    public void setOrder_state(String order_state) {
        this.order_state = order_state;
    }

    public void setOrder_time(String order_time) {
        this.order_time = order_time;
    }

    public void setTrain_id(String train_id) {
        this.train_id = train_id;
    }

    public void setBegin_zone_station(String begin_zone_station) {
        this.begin_zone_station = begin_zone_station;
    }

    public void setArrive_zone_station(String arrive_zone_station) {
        this.arrive_zone_station = arrive_zone_station;
    }

    public void setTrain_time(String train_time) {
        this.train_time = train_time;
    }

    public void setTrain_style(String train_style) {
        this.train_style = train_style;
    }

    public void setTicket_price(String ticket_price) {
        this.ticket_price = ticket_price;
    }


    public String getUsername() {
        return username;
    }

    public String getOrder_state() {
        return order_state;
    }

    public String getOrder_time() {
        return order_time;
    }

    public String getTrain_id() {
        return train_id;
    }

    public String getBegin_zone_station() {
        return begin_zone_station;
    }

    public String getArrive_zone_station() {
        return arrive_zone_station;
    }

    public String getTrain_time() {
        return train_time;
    }

    public String getTrain_style() {
        return train_style;
    }

    public String getTicket_price() {
        return ticket_price;
    }

    @Override
    public String toString() {
        return "OrderInfo{" +
                "username='" + username + '\'' +
                ", order_state='" + order_state + '\'' +
                ", order_time='" + order_time + '\'' +
                ", train_id='" + train_id + '\'' +
                ", begin_zone_station='" + begin_zone_station + '\'' +
                ", arrive_zone_station='" + arrive_zone_station + '\'' +
                ", train_time='" + train_time + '\'' +
                ", train_style='" + train_style + '\'' +
                ", ticket_price='" + ticket_price + '\'' +
                '}';
    }
}
