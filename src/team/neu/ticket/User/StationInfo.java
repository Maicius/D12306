package team.neu.ticket.User;

/**
 * Created by Maicius on 2017/3/15.
 */
public class StationInfo {
    private int station_id;
    private String station_name;
    private String station_code;
    private String railway_admin;
    private String station_class;
    private String station_region;
    private String station_addr;

    public StationInfo(){

    }
    public StationInfo(int station_id,
            String station_name,
            String station_code,
            String railway_admin,
            String station_class,
            String station_region,
            String station_addr){
        this.station_id = station_id;
        this.station_addr = station_addr;
        this.station_name = station_name;
        this.station_class = station_class;
        this.station_code = station_code;
        this.station_region = station_region;
        this.railway_admin = railway_admin;
    }
    public int getStation_id() {
        return station_id;
    }

    public void setStation_id(int station_id) {
        this.station_id = station_id;
    }

    public String getStation_name() {
        return station_name;
    }

    public void setStation_name(String station_name) {
        this.station_name = station_name;
    }

    public String getStation_code() {
        return station_code;
    }

    public void setStation_code(String station_code) {
        this.station_code = station_code;
    }

    public String getRailway_admin() {
        return railway_admin;
    }

    public void setRailway_admin(String railway_admin) {
        this.railway_admin = railway_admin;
    }

    public String getStation_class() {
        return station_class;
    }

    public void setStation_class(String station_class) {
        this.station_class = station_class;
    }

    public String getStation_region() {
        return station_region;
    }

    public void setStation_region(String station_region) {
        this.station_region = station_region;
    }

    public String getStation_addr() {
        return station_addr;
    }

    public void setStation_addr(String station_addr) {
        this.station_addr = station_addr;
    }
}
