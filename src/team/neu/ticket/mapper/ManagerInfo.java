package team.neu.ticket.mapper;

import team.neu.ticket.User.RouteInfo;
import team.neu.ticket.User.StationInfo;

import java.util.List;

/**
 * Created by Maicius on 2017/3/15.
 */
public interface ManagerInfo {
    public List<StationInfo> queryStationInfo(StationInfo stationInfo) throws Exception;
    public int modifyStationInfo(StationInfo stationInfo) throws Exception;
    public List<RouteInfo> queryRouteInfo(RouteInfo routeInfo) throws Exception;

    public int doDeleteRoute(int route_id) throws Exception;
    public int doAddRoute(RouteInfo routeInfo) throws Exception;
    public int doDeleteStation(int station_id) throws Exception;
    public int doAddStation(StationInfo stationInfo) throws Exception;
    public int doModifyRoute(RouteInfo routeInfo) throws Exception;
}
