package team.neu.ticket.User;

/**
 * Created by Maicius on 2017/3/13.
 */
public class User {
    private String user_name;
    private String password;
    private String user_idcard_num;
    private String job;
    private String phone_num;

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUser_idcard_num() {
        return user_idcard_num;
    }

    public void setUser_idcard_num(String user_idcard_num) {
        this.user_idcard_num = user_idcard_num;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getPhone_num() {
        return phone_num;
    }

    public void setPhone_num(String phone_num) {
        this.phone_num = phone_num;
    }
}
