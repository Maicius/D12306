package team.neu.ticket.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import team.neu.ticket.User.RouteInfo;
import team.neu.ticket.service.ManagerService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Maicius on 2017/3/17.
 */
@Controller
public class RouteManagerController {
    @Autowired
    ManagerService managerService;

    RouteInfo routeInfo;

    @RequestMapping("/routeManage")
    public ModelAndView routeManage(HttpServletRequest request,
                                    @RequestParam(value = "route_id") String route_id_s,
                                    @RequestParam(value = "station_id") String station_name,
                                    @RequestParam(value = "stay_time") String stay_time,
                                    @RequestParam(value = "token_time") String token_time,
                                    @RequestParam(value = "train_id") String train_id,
                                    @RequestParam(value = "arrive_station") String arrive_station_name,
                                    @RequestParam(value = "start_clock") String start_clock,
                                    @RequestParam(value = "arrive_clock") String arrive_clock,
                                    @RequestParam(value = "mile") String mile) throws Exception {
        int route_id, station_id, arrive_station;
        try {
            route_id = Integer.parseInt(route_id_s);
        } catch (Exception e) {
            route_id = 0;
        }
/*        try{
            station_id = Integer.parseInt(station_id_s);
        }catch(Exception e){
            station_id = 0;
        }
        try{
            arrive_station = Integer.parseInt(arrive_station_s);
        }catch( Exception e){
            arrive_station = 0;
        }*/

/*        StationInfo stationInfo = new StationInfo();
        stationInfo.setStation_name(station_id_s);
        List<StationInfo> stationInfos = managerService.queryStationInfo(stationInfo);
        station_id = stationInfos.get(0).getStation_id();
        System.out.println(station_id);
        stationInfo.setStation_name(arrive_station_s);
        List<StationInfo> arriveStationInfo = managerService.queryStationInfo(stationInfo);
        arrive_station = arriveStationInfo.get(0).getStation_id();
        System.out.println(arrive_station);*/
        routeInfo = new RouteInfo(route_id, station_name, arrive_station_name, token_time,
                train_id, start_clock, arrive_clock, mile, stay_time);
        List<RouteInfo> routeInfos = managerService.queryRouteInfo(routeInfo);
        HttpSession session = request.getSession();
        session.setAttribute("routeInfo", routeInfo);
        ModelAndView mv = new ModelAndView();
        mv.addObject("routeInfo", routeInfos);
        mv.setViewName("rout_manager_form");
        System.out.println(routeInfos.toString());
        return mv;
    }

    @ResponseBody
    @RequestMapping("/deleteRoute")
    public ModelAndView deleteRoute(@RequestParam(value = "route_id") String route_id_s) throws Exception {
        int route_id;
        try {
            route_id = Integer.parseInt(route_id_s);
        } catch (Exception e) {
            route_id = 0;
        }
        ModelAndView mv = new ModelAndView();
        int deleteRs = managerService.deleteRoute(route_id);
        if (routeInfo != null) {
            List<RouteInfo> routeInfos = managerService.queryRouteInfo(routeInfo);
            System.out.println(deleteRs);
            mv.addObject("routeInfo", routeInfos);
        }
        mv.setViewName("rout_manager_form");
        return mv;
    }

    @RequestMapping("/addRoute")
    public ModelAndView addRoute(@RequestParam(value = "route_id") String route_id_s,
                                 @RequestParam(value = "station_id") String station_name,
                                 @RequestParam(value = "stay_time") String stay_time,
                                 @RequestParam(value = "token_time") String token_time,
                                 @RequestParam(value = "train_id") String train_id,
                                 @RequestParam(value = "arrive_station") String arrive_station_name,
                                 @RequestParam(value = "start_clock") String start_clock,
                                 @RequestParam(value = "arrive_clock") String arrive_clock,
                                 @RequestParam(value = "mile") String mile) throws Exception {
        int route_id;
        try {
            route_id = Integer.parseInt(route_id_s);
        } catch (Exception e) {
            route_id = 0;
        }
        routeInfo = new RouteInfo(route_id, station_name, arrive_station_name, token_time,
                train_id, start_clock, arrive_clock, mile, stay_time);
        int success = managerService.addRoute(routeInfo);
        List<RouteInfo> routeInfos = managerService.queryRouteInfo(routeInfo);
        System.out.println(success);
        ModelAndView mv = new ModelAndView();
        mv.addObject("routeInfo", routeInfos);
        mv.setViewName("rout_manager_form");
        return mv;
    }

    @RequestMapping("/modifyRoute")
    public ModelAndView modifyRoute(@RequestParam(value = "route_id") String route_id_s,
                                    @RequestParam(value = "station_id") String station_name,
                                    @RequestParam(value = "stay_time") String stay_time,
                                    @RequestParam(value = "token_time") String token_time,
                                    @RequestParam(value = "train_id") String train_id,
                                    @RequestParam(value = "arrive_station") String arrive_station_name,
                                    @RequestParam(value = "start_clock") String start_clock,
                                    @RequestParam(value = "arrive_clock") String arrive_clock,
                                    @RequestParam(value = "mile") String mile) throws Exception {
        int route_id;
        try {
            route_id = Integer.parseInt(route_id_s);
        } catch (Exception e) {
            route_id = 0;
        }
        routeInfo = new RouteInfo(route_id, station_name, arrive_station_name, token_time,
                train_id, start_clock, arrive_clock, mile, stay_time);
        int success = managerService.modifyRouteInfo(routeInfo);
        System.out.println("modifyRoute:"+success);
        List<RouteInfo> routeInfos = managerService.queryRouteInfo(routeInfo);
        System.out.println(routeInfos);
        ModelAndView mv = new ModelAndView();
        mv.addObject("routeInfo", routeInfos);
        mv.setViewName("rout_manager_form");
        return mv;
    }
}
