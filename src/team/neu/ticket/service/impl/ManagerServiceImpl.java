package team.neu.ticket.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import team.neu.ticket.User.RouteInfo;
import team.neu.ticket.User.StationInfo;
import team.neu.ticket.mapper.ManagerInfo;
import team.neu.ticket.service.ManagerService;

import java.util.List;

/**
 * Created by Maicius on 2017/3/15.
 */
public class ManagerServiceImpl implements ManagerService{
    @Autowired
    ManagerInfo managerInfo;
    @Override
    public List<StationInfo> queryStationInfo(StationInfo stationInfo) throws Exception {
        return managerInfo.queryStationInfo(stationInfo);
    }

    @Override
    public int modifyStationInfo(StationInfo stationInfo) throws Exception {
        //
        return managerInfo.modifyStationInfo(stationInfo);
    }

    @Override
    public int deleteStationInfo(int station_id) throws Exception {
        return managerInfo.doDeleteStation(station_id);
    }

    @Override
    public int addStation(StationInfo stationInfo) throws Exception {
        return managerInfo.doAddStation(stationInfo);
    }

    @Override
    public List<RouteInfo> queryRouteInfo(RouteInfo routeInfo) throws Exception {
        return managerInfo.queryRouteInfo(routeInfo);
    }

    @Override
    public int modifyRouteInfo(RouteInfo routeInfo) throws Exception {
        return managerInfo.doModifyRoute(routeInfo);
    }

    @Override
    public int deleteRoute(int route_id) throws Exception {
        return managerInfo.doDeleteRoute(route_id);
    }

    @Override
    public int addRoute(RouteInfo routeInfo) throws Exception {
        return managerInfo.doAddRoute(routeInfo);
    }
}
