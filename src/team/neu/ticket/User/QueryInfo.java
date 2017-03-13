package team.neu.ticket.User;

/**
 * Created by Maicius on 2017/3/13.
 */
public class QueryInfo {
    private String start_station;
    private String end_station;
    private String ticket_date;


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

    public String getEnd_station() {
        return end_station;
    }

    public void setEnd_station(String end_station) {
        this.end_station = end_station;
    }
}
