package team.neu.ticket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import team.neu.ticket.User.StationInfo;
import team.neu.ticket.service.ManagerService;

import java.util.List;

/**
 * Created by Maicius on 2017/3/15.
 */
@Controller
public class StationManagerController {
    @Autowired
    ManagerService managerService;



    @RequestMapping(value="/manageTicket")
    public ModelAndView stationManage(@RequestParam(value="station_id") int station_id,
                                      @RequestParam(value="station_name") String station_name,
                                      @RequestParam(value="station_code") String station_code,
                                      @RequestParam(value="railway_admin") String railway_admin,
                                      @RequestParam(value="station_class") String station_class,
                                      @RequestParam(value="station_region") String station_region,
                                      @RequestParam(value="station_addr") String station_addr)
                                      throws  Exception{
        ModelAndView mv = new ModelAndView();
        StationInfo stationInfo = new StationInfo(station_id, station_name, station_code,
                                                railway_admin, station_class, station_region,
                                                station_addr);
        List<StationInfo> stationInfos = managerService.queryStationInfo(stationInfo);
        System.out.println(stationInfos.toString());
        mv.addObject("stationInfos", stationInfos);
        mv.setViewName("");
        return mv;
    }
}
