package team.neu.ticket.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import team.neu.ticket.User.User;
import team.neu.ticket.mapper.UserMapper;
import team.neu.ticket.service.UserService;

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

    @Override
    public User doModify(User user) throws Exception {
        //更新用户表返回影响行数
        if( userMapper.doModify(user)!=0){
            return  userMapper.doUserLogin(user);
        }
        return null;
    }


}
