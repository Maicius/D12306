package team.neu.ticket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import team.neu.ticket.User.User;
import team.neu.ticket.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("user", loginUser);
            System.out.println("Login_success：" + loginUser.getUser_name());
        }

        return null;
    }

    @ResponseBody
    @RequestMapping("/userVerify")
    public String userVerify(HttpServletRequest request,
                                   @RequestParam(value="phone_num") String phone_num) throws Exception{
        user.setPhone_num(phone_num);
        //System.out.println(user.getPhone_num());
        User verifyUser = userService.doUserLogin(user);
        if(verifyUser != null) {
            System.out.println("Verify_success：" + verifyUser.getUser_name());
            return verifyUser.getUser_name();
        }else{
            System.out.println("Verify_Failed");
            return "该用户不存在";
        }
    }

    @ResponseBody
    @RequestMapping("/userRegister")
    public String userRegister(HttpServletRequest request,
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
        if(success > 0){
            System.out.println("success");
            return user.getUser_name();
        }else{
            return "failed";
        }
    }
}
