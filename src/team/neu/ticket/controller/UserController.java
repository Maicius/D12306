package team.neu.ticket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
        user.setUserName(phone_num);
        user.setPassword(password);
        ModelAndView modelAndView = new ModelAndView();
        User loginUser = userService.doUserLogin(user);
        if(loginUser == null){
            System.out.println("登陆失败");
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("user", loginUser);
            System.out.println("Login_success：" + loginUser.getUserName());
        }

        return null;
    }
}
