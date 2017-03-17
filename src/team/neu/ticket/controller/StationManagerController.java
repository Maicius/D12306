package team.neu.ticket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import team.neu.ticket.User.StationInfo;
import team.neu.ticket.service.ManagerService;

import javax.management.Query;
import java.lang.reflect.Type;
import java.util.List;

/**
 * Created by Maicius on 2017/3/15.
 */
@Controller
public class StationManagerController {
    @Autowired
    ManagerService managerService;
    StationInfo stationInfo;


    @RequestMapping(value="/manageStation")
    public ModelAndView stationManage(@RequestParam(value="station_id") String station_id_S,
                                      @RequestParam(value="station_name") String station_name,
                                      @RequestParam(value="station_code") String station_code,
                                      @RequestParam(value="railway_admin") String railway_admin,
                                      @RequestParam(value="station_class") String station_class,
                                      @RequestParam(value="station_region") String station_region,
                                      @RequestParam(value="station_addr") String station_addr)
                                      throws  Exception{
        ModelAndView mv = new ModelAndView();
        int station_id;
        try {
            station_id = Integer.parseInt(station_id_S);
            System.out.println(station_id);
        }catch(Exception e){
            station_id = 0;
        }
        stationInfo = new StationInfo(station_id, station_name, station_code,
                                                railway_admin, station_class, station_region,
                                                station_addr);
        List<StationInfo> stationInfos = managerService.queryStationInfo(stationInfo);
        System.out.println(stationInfos.toString());
        mv.addObject("stationInfos", stationInfos);
        mv.setViewName("station_manager_form");
        return mv;
    }

    @RequestMapping(value="/modifyStation")
    public ModelAndView modifyStation(@RequestParam(value="station_id") String station_id_S,
                                      @RequestParam(value="station_name") String station_name,
                                      @RequestParam(value="station_code") String station_code,
                                      @RequestParam(value="railway_admin") String railway_admin,
                                      @RequestParam(value="station_class") String station_class,
                                      @RequestParam(value="station_region") String station_region,
                                      @RequestParam(value="station_addr") String station_addr) throws Exception{
        int station_id;
        try{
            station_id = Integer.parseInt(station_id_S);
        }catch(Exception e){
            station_id = 0;
        }

        stationInfo = new StationInfo(station_id, station_name, station_code,
                railway_admin, station_class, station_region,
                station_addr);

        int returnInfo = managerService.modifyStationInfo(stationInfo);

        if (returnInfo>0){
            System.out.println("车站信息修改成功！");
        }else{
            System.out.println("车站信息修改失败！");
        }


        ModelAndView mv = new ModelAndView();

        mv.setViewName("station_manager_form");
        return mv;
    }

    @RequestMapping(value="/deleteStation")
    public ModelAndView deleteStation(@RequestParam(value="station_id") String station_id_s) throws Exception{
        int station_id;
        try{
            station_id = Integer.parseInt(station_id_s);
        }catch(Exception e){
            station_id = 0;
        }

        int rs = managerService.deleteStationInfo(station_id);
        List<StationInfo> stationInfos = managerService.queryStationInfo(stationInfo);
        System.out.println(rs);
        ModelAndView mv = new ModelAndView();
        mv.addObject(stationInfos);
        mv.setViewName("station_manager_form");
        return mv;
    }

    @RequestMapping(value="/addStation")
    public ModelAndView addStation(@RequestParam(value="station_id") String station_id_S,
                                   @RequestParam(value="station_name") String station_name,
                                   @RequestParam(value="station_code") String station_code,
                                   @RequestParam(value="railway_admin") String railway_admin,
                                   @RequestParam(value="station_class") String station_class,
                                   @RequestParam(value="station_region") String station_region,
                                   @RequestParam(value="station_addr") String station_addr) throws Exception{
        int station_id;
        try{
            station_id = Integer.parseInt(station_id_S);
        }catch(Exception e){
            station_id = 0;
        }

        stationInfo = new StationInfo(station_id, station_name, station_code,
                railway_admin, station_class, station_region,
                station_addr);
        int rs = managerService.addStation(stationInfo);
        List<StationInfo> stationInfos = managerService.queryStationInfo(stationInfo);
        System.out.println(rs);
        ModelAndView mv = new ModelAndView();
        mv.addObject("stationInfos", stationInfos);
        mv.setViewName("station_manager_form");
        return mv;
    }
}
