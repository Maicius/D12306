package team.neu.ticket.interceptor.service;

import team.neu.ticket.interceptor.User.User;

/**
 * Created by Maicius on 2017/3/13.
 */
public interface UserService {
    public User doUserLogin(User user) throws Exception;

    public User doUserVerify(User user) throws Exception;

    public int doRegistUser(User user) throws Exception;
}
