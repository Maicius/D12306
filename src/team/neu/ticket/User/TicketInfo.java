package team.neu.ticket.User;

/**
 * Created by Maicius on 2017/3/16.
 */
public class TicketInfo {
    private int ticket_id;
    private String train_id;
    private String train_date;
    private String train_time;
    private int compart_id;
    private int seat_id;
    private String begin_zone_station;
    private String arrive_zone_station;
    private double ticket_price;
    private String user_name;
    private String user_type;
    private String user_idcard_num;
    private String purchase_way;
    private String purchase_time;
    private String train_style;
    private String train_class;
    private String ticket_state;
    private String ticket_date;

    public TicketInfo( int ticket_id,String train_id, String train_date, String train_time,
            int compart_id, int seat_id, String begin_zone_station, String arrive_zone_station,
            double ticket_price, String user_name, String user_type, String user_idcard_num,
            String purchase_way, String purchase_time, String train_style, String train_class,
                       String ticket_state){
        this.train_id = train_id;
        this.ticket_id = ticket_id;
        this.train_date = train_date;
        this.train_time = train_time;
        this.compart_id = compart_id;
        this.seat_id = seat_id;
        this.begin_zone_station = begin_zone_station;
        this.arrive_zone_station = arrive_zone_station;
        this.ticket_price = ticket_price;
        this.user_name = user_name;
        this.user_type = user_type;
        this.user_idcard_num = user_idcard_num;
        this.purchase_way = purchase_way;
        this.purchase_time = purchase_time;
        this.train_style = train_style;
        this.train_class = train_class;
        this.ticket_state = ticket_state;
    }
    public int getTicket_id() {
        return ticket_id;
    }

    public void setTicket_id(int ticket_id) {
        this.ticket_id = ticket_id;
    }

    public String getTrain_id() {
        return train_id;
    }

    public void setTrain_id(String train_id) {
        this.train_id = train_id;
    }

    public String getTrain_date() {
        return train_date;
    }

    public void setTrain_date(String train_date) {
        this.train_date = train_date;
    }

    public String getTrain_time() {
        return train_time;
    }

    public void setTrain_time(String train_time) {
        this.train_time = train_time;
    }

    public int getCompart_id() {
        return compart_id;
    }

    public void setCompart_id(int compart_id) {
        this.compart_id = compart_id;
    }

    public int getSeat_id() {
        return seat_id;
    }

    public void setSeat_id(int seat_id) {
        this.seat_id = seat_id;
    }

    public String getBegin_zone_station() {
        return begin_zone_station;
    }

    public void setBegin_zone_station(String begin_zone_station) {
        this.begin_zone_station = begin_zone_station;
    }

    public String getArrive_zone_station() {
        return arrive_zone_station;
    }

    public void setArrive_zone_station(String arrive_zone_station) {
        this.arrive_zone_station = arrive_zone_station;
    }

    public double getTicket_price() {
        return ticket_price;
    }

    public void setTicket_price(double ticket_price) {
        this.ticket_price = ticket_price;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_type() {
        return user_type;
    }

    public void setUser_type(String user_type) {
        this.user_type = user_type;
    }

    public String getUser_idcard_num() {
        return user_idcard_num;
    }

    public void setUser_idcard_num(String user_idcard_num) {
        this.user_idcard_num = user_idcard_num;
    }

    public String getPurchase_way() {
        return purchase_way;
    }

    public void setPurchase_way(String purchase_way) {
        this.purchase_way = purchase_way;
    }

    public String getPurchase_time() {
        return purchase_time;
    }

    public void setPurchase_time(String purchase_time) {
        this.purchase_time = purchase_time;
    }

    public String getTrain_style() {
        return train_style;
    }

    public void setTrain_style(String train_style) {
        this.train_style = train_style;
    }

    public String getTrain_class() {
        return train_class;
    }

    public void setTrain_class(String train_class) {
        this.train_class = train_class;
    }

    public String getTicket_state() {
        return ticket_state;
    }

    public void setTicket_state(String ticket_state) {
        this.ticket_state = ticket_state;
    }

    public String getTicket_date() {
        return ticket_date;
    }

    public void setTicket_date(String ticket_date) {
        this.ticket_date = ticket_date;
    }
}
