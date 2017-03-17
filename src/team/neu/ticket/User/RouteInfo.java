package team.neu.ticket.User;

/**
 * Created by Maicius on 2017/3/17.
 */
public class RouteInfo {
    private int route_id;
    private int station_id;
    private int arrive_station;
    private String station_name;
    private String arrive_station_name;
    private String stay_time;
    private String token_time;
    private String station_serial;
    private String train_id;
    private String start_date;
    private String arrive_date;
    private String start_clock;
    private String arrive_clock;
    private String mile;
    public RouteInfo(){

    }
    public RouteInfo(int route_id, String station_name, String arrive_station_name,
            String token_time, String train_id,
                      String start_clock,
            String arrive_clock, String mile, String stay_time){
        this.route_id = route_id;
        this.start_clock = start_clock;
        this.arrive_clock = arrive_clock;
        this.mile = mile;
        this.station_name = station_name;
        this.arrive_station_name = arrive_station_name;
        this.train_id = train_id;
        this.token_time = token_time;
        this.stay_time = stay_time;
    }

    public int getRoute_id() {
        return route_id;
    }

    public void setRoute_id(int route_id) {
        this.route_id = route_id;
    }

    public int getStation_id() {
        return station_id;
    }

    public void setStation_id(int station_id) {
        this.station_id = station_id;
    }

    public int getArrive_station() {
        return arrive_station;
    }

    public void setArrive_station(int arrive_station) {
        this.arrive_station = arrive_station;
    }

    public String getStay_time() {
        return stay_time;
    }

    public void setStay_time(String stay_time) {
        this.stay_time = stay_time;
    }

    public String getToken_time() {
        return token_time;
    }

    public void setToken_time(String token_time) {
        this.token_time = token_time;
    }

    public String getStation_serial() {
        return station_serial;
    }

    public void setStation_serial(String station_serial) {
        this.station_serial = station_serial;
    }

    public String getTrain_id() {
        return train_id;
    }

    public void setTrain_id(String train_id) {
        this.train_id = train_id;
    }

    public String getStart_date() {
        return start_date;
    }

    public void setStart_date(String start_date) {
        this.start_date = start_date;
    }

    public String getArrive_date() {
        return arrive_date;
    }

    public void setArrive_date(String arrive_date) {
        this.arrive_date = arrive_date;
    }

    public String getStart_clock() {
        return start_clock;
    }

    public void setStart_clock(String start_clock) {
        this.start_clock = start_clock;
    }

    public String getArrive_clock() {
        return arrive_clock;
    }

    public void setArrive_clock(String arrive_clock) {
        this.arrive_clock = arrive_clock;
    }

    public String getMile() {
        return mile;
    }

    public void setMile(String mile) {
        this.mile = mile;
    }

    public String getStation_name() {
        return station_name;
    }

    public void setStation_name(String station_name) {
        this.station_name = station_name;
    }

    public String getArrive_station_name() {
        return arrive_station_name;
    }

    public void setArrive_station_name(String arrive_station_name) {
        this.arrive_station_name = arrive_station_name;
    }
}
