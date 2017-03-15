package team.neu.ticket.User;

import java.util.Date;

/**
 * Created by Maicius on 2017/3/13.
 */
public class QueryInfo {
    private String train_id;
    private String start_station;
    private String arrive_station;
    private String ticket_date;
    private String start_time;
    private String arrive_time;
    private String token_time;
    private String mile;
    private String price;
    private Date date;
    private int standing_ticket;
    private int ticket_num;
    private String train_class;
    private String train_style;

    public String getTicket_date() {
        return ticket_date;
    }

    public void setTicket_date(String ticket_date) {
        this.ticket_date = ticket_date;
    }

    public String getStart_station() {
        return start_station;
    }

    public void setStart_station(String start_station) {
        this.start_station = start_station;
    }

    public String getArrive_station() {
        return arrive_station;
    }

    public void setArrive_station(String arrive_station) {
        this.arrive_station = arrive_station;
    }

    public String getStart_time() {
        return start_time;
    }

    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }

    public String getArrive_time() {
        return arrive_time;
    }

    public void setArrive_time(String arrive_time) {
        this.arrive_time = arrive_time;
    }

    public String getTrain_id() {
        return train_id;
    }

    public void setTrain_id(String train_id) {
        this.train_id = train_id;
    }

    public String getToken_time() {
        return token_time;
    }

    public void setToken_time(String token_time) {
        this.token_time = token_time;
    }

    public String getMile() {
        return mile;
    }

    public void setMile(String mile) {
        this.mile = mile;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }


    public int getTicket_num() {
        return ticket_num;
    }

    public void setTicket_num(int ticket_num) {
        this.ticket_num = ticket_num;
    }

    public int getStanding_ticket() {
        return standing_ticket;
    }

    public void setStanding_ticket(int standing_ticket) {
        this.standing_ticket = standing_ticket;
    }

    public String getTrain_class() {
        return train_class;
    }

    public void setTrain_class(String train_class) {
        this.train_class = train_class;
    }

    public String getTrain_style() {
        return train_style;
    }

    public void setTrain_style(String train_style) {
        this.train_style = train_style;
    }
}
