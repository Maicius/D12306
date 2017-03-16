package team.neu.ticket.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
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
    public StationInfo modifyStationInfo(int station_id) throws Exception {
        return managerInfo.modifyStationInfo(station_id);
    }
}
