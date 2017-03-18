package team.neu.ticket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import team.neu.ticket.User.User;
import team.neu.ticket.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Maicius on 2017/3/12.
 */
@Controller
public class UserController {
    @Autowired
    UserService userService;

    User user = new User();
    @RequestMapping("/userLogin")
    public ModelAndView userLogin(HttpServletRequest request, @RequestParam(value="phone_num") String phone_num,
                                  @RequestParam(value="password") String password) throws Exception{
        user.setPhone_num(phone_num);
        user.setPassword(password);
        ModelAndView modelAndView = new ModelAndView();
        User loginUser = userService.doUserLogin(user);
        if(loginUser == null){
            System.out.println("登陆失败");
            System.out.println("Email"+loginUser.getEmail());
        }else{
            System.out.println("Email"+loginUser.getPhone_num());
            HttpSession session = request.getSession();
            session.setAttribute("username", loginUser.getUser_name());
            session.setAttribute("real_name", loginUser.getReal_name());
            session.setAttribute("user_idcard_num", loginUser.getUser_idcard_num());
            session.setAttribute("job", loginUser.getJob());
            session.setAttribute("passenger_type", loginUser.getPassenger_type());
            session.setAttribute("user", loginUser);
            modelAndView.setViewName("index");
            return modelAndView;
        }
        return null;
    }

    @ResponseBody
    @RequestMapping(value="/userVerify", produces="text/html;charset=UTF-8")
    public String userVerify(HttpServletRequest request,
                                   @RequestParam(value="phone_num") String phone_num) throws Exception{
        user.setPhone_num(phone_num);
        System.out.println(user.getPhone_num());
        User verifyUser = userService.doUserVerify(user);
        if(verifyUser != null) {
            System.out.println("Verify_success：" + verifyUser.getUser_name());
            return verifyUser.getUser_name();
        }else{
            System.out.println("Verify_Failed");
            return "";
        }
    }

    @ResponseBody
    @RequestMapping(value= "/userRegister", produces="text/html;charset=UTF-8")
    public ModelAndView userRegister(HttpServletRequest request,
                                     @RequestParam(value="loginUserDTO.user_name") String username,
                                     @RequestParam(value="loginUserDTO.name") String real_name,
                                     @RequestParam(value="loginUserDTO.id_type_code") String idcard_type,
                                     @RequestParam(value="loginUserDTO.id_no") String idcard_num,
                                     @RequestParam(value="userDTO.password") String password,
                                     @RequestParam(value="userDTO.email") String email,
                                     @RequestParam(value="userDTO.mobile_no") String phone_num,
                                     @RequestParam(value="passenger_type") String passenger_type) throws Exception{
        ModelAndView mv = new ModelAndView();
        User user = new User(username, real_name,password, idcard_num
                , "passenger", phone_num, idcard_type, passenger_type, email);
        int success = userService.doRegistUser(user);
        System.out.println("success??:"+success);
        if(success > 0){
            System.out.println("success");
            HttpSession session = request.getSession();
            session.setAttribute("username", user.getUser_name());
            session.setAttribute("user", user);
            mv.setViewName("purchase");
            return mv;
        }else{
            mv.setViewName("register");
            return mv;
        }
    }


    @RequestMapping(value = "/logout", produces="text/html;charset=UTF-8")
    public @ResponseBody String logout(HttpServletRequest request){

        request.getSession().invalidate();
        System.out.println("清空了session");
        return  "清除返回";
    }

    @RequestMapping(value = "/userInfoModify", produces="text/html;charset=UTF-8")
    public  ModelAndView userInfoModify (HttpServletRequest request,
                                         @RequestParam(value="username") String username,
                                         @RequestParam(value="real_name") String real_name,
                                         @RequestParam(value="idcard_type") String idcard_type,
                                         @RequestParam(value="idcard_num") String idcard_num,
                                         @RequestParam(value="user_password") String password,
                                         @RequestParam(value="email") String email,
                                         @RequestParam(value="phone_num") String phone_num,
                                         @RequestParam(value="passenger_type") String passenger_type)throws Exception{
        System.out.println("userInfoModify");
        ModelAndView mav = new ModelAndView();
        User user = new User(username, real_name,password, idcard_num
                , "passenger", phone_num, idcard_type, passenger_type, email);
        User newUser = userService.doModify(user);
        if (newUser!=null){
            System.out.println("用户信息更改成功");
            request.getSession().invalidate();
            System.out.println("清空Session成功");
            HttpSession session = request.getSession();
            session.setAttribute("username", user.getUser_name());
            session.setAttribute("user", user);
            mav.setViewName("userInfoPage");
        }
        return mav;
    }
}
