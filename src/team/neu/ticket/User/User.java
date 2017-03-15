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
    private String idcard_type;
    private String passenger_type;
    private String email;
    private String real_name;
    public User(){

    }
    public User (String user_name, String real_name, String password, String user_idcard_num,
            String job, String phone_num, String idcard_type, String passenger_type, String email){

        this.user_name = user_name;
        this.real_name = real_name;
        this.password = password;
        this.passenger_type = passenger_type;
        this.email = email;
        this.user_idcard_num = user_idcard_num;
        this.job = job;
        this.phone_num = phone_num;
        this.idcard_type = idcard_type;
    }
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

    public String getIdcard_type() {
        return idcard_type;
    }

    public void setIdcard_type(String idcard_type) {
        this.idcard_type = idcard_type;
    }

    public String getPassenger_type() {
        return passenger_type;
    }

    public void setPassenger_type(String passenger_type) {
        this.passenger_type = passenger_type;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getReal_name() {
        return real_name;
    }

    public void setReal_name(String real_name) {
        this.real_name = real_name;
    }
}
