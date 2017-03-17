package team.neu.ticket.service;

import team.neu.ticket.User.RouteInfo;
import team.neu.ticket.User.StationInfo;

import java.util.List;

/**
 * Created by Maicius on 2017/3/15.
 */
public interface ManagerService {
     List<StationInfo> queryStationInfo(StationInfo stationInfo) throws Exception;
     int modifyStationInfo(StationInfo stationInfo) throws Exception;
     int deleteStationInfo(int station_id) throws  Exception;
     int addStation(StationInfo stationInfo)  throws Exception;


     List<RouteInfo> queryRouteInfo(RouteInfo routeInfo) throws Exception;
     int modifyRouteInfo(RouteInfo routeInfo) throws Exception;
     int deleteRoute(int route_id) throws Exception;
     int addRoute(RouteInfo routeInfo) throws Exception;
}
