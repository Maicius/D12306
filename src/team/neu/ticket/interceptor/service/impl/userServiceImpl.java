package team.neu.ticket.interceptor.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import team.neu.ticket.interceptor.User.User;
import team.neu.ticket.interceptor.mapper.UserMapper;
import team.neu.ticket.interceptor.service.UserService;

/**
 * Created by Maicius on 2017/3/13.
 */
public class userServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User doUserLogin(User user) throws Exception {
        return userMapper.doUserLogin(user);
    }

    @Override
    public User doUserVerify(User user) throws Exception {
        return userMapper.doUserVerify(user);
    }

    @Override
    public int doRegistUser(User user) throws Exception {
        return userMapper.doRegistUser(user);
    }
}
