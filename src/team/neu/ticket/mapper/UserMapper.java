package team.neu.ticket.interceptor.mapper;

import team.neu.ticket.interceptor.User.User;

/**
 * Created by Maicius on 2017/3/13.
 */
public interface UserMapper {
    public User doUserLogin(User user) throws Exception;
    public User doUserVerify(User user) throws Exception;
    public int doRegistUser(User user) throws Exception;
}
