package cn.entity;

import java.util.Date;

public class User {
    private int uid;    //用户ID
    private String username;
    private String password;
    private String sex;
    private String hobbys;
    private String phone;
    private String email;
    private String addrs;
    private boolean flag;
    private String logintime;

    public User(String username, String password, String sex, String hobbys, String phone, String email, String addrs, boolean flag) {
        this.username = username;
        this.password = password;
        this.sex = sex;
        this.hobbys = hobbys;
        this.phone = phone;
        this.email = email;
        this.addrs = addrs;
        this.flag = flag;
    }

    public User(int uid, String username, String password, String sex, String hobbys, String phone, String email, String addrs, boolean flag, String logintime) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.sex = sex;
        this.hobbys = hobbys;
        this.phone = phone;
        this.email = email;
        this.addrs = addrs;
        this.flag = flag;
        this.logintime = logintime;
    }

    public User(int uid, String username, String password, String sex, boolean flag) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.sex = sex;
        this.flag = flag;
    }

    public User() {
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getHobbys() {
        return hobbys;
    }

    public void setHobbys(String hobbys) {
        this.hobbys = hobbys;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddrs() {
        return addrs;
    }

    public void setAddrs(String addrs) {
        this.addrs = addrs;
    }

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }

    public String getLogintime() {
        return logintime;
    }

    public void setLogintime(String logintime) {
        this.logintime = logintime;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", sex='" + sex + '\'' +
                ", hobbys='" + hobbys + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", addrs='" + addrs + '\'' +
                ", flag=" + flag +
                ", logintime='" + logintime + '\'' +
                '}';
    }
}
