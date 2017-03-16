package team.neu.ticket.service;

import team.neu.ticket.User.StationInfo;

import java.util.List;

/**
 * Created by Maicius on 2017/3/15.
 */
public interface ManagerService {
    List<StationInfo> queryStationInfo(StationInfo stationInfo) throws Exception;
     int modifyStationInfo(StationInfo stationInfo) throws Exception;
}
