package team.neu.ticket.mapper;

import team.neu.ticket.User.User;

/**
 * Created by Maicius on 2017/3/13.
 */
public interface UserMapper {
    public User doUserLogin(User user) throws Exception;
}
