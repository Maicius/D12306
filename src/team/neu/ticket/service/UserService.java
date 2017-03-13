package team.neu.ticket.service;

import team.neu.ticket.User.User;

/**
 * Created by Maicius on 2017/3/13.
 */
public interface UserService {
    public User doUserLogin(User user) throws Exception;
}
