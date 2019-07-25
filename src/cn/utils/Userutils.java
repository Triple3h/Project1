package cn.utils;


import cn.entity.User;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class Userutils {

    public static User getUserByNormalForm(HttpServletRequest req){

        User user = new User();

        user.setUid(Integer.parseInt(req.getParameter("uid")));
        user.setUsername(req.getParameter("username"));
        user.setPassword(req.getParameter("password"));
        user.setPhone(req.getParameter("phone"));
        user.setEmail(req.getParameter("email"));
        user.setAddrs(req.getParameter("addrs"));
        user.setHobbys(req.getParameter("hobbys"));
        user.setSex(req.getParameter("sex"));

        return user;

    }
}
