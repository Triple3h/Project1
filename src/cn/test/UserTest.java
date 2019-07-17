package cn.test;

import cn.dao.UserDao;
import cn.entity.User;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

public class UserTest {
    private UserDao uD;

    @Before
    public void init(){
        uD = new UserDao();
    }

    @Test
    public void test1(){
//        User user = new User("admin1","123456","男","篮球","123456","wdw@qq.com","dwd",true);
        User user = new User();
        user.setUsername("admin");
        user.setPassword("123456");
//        int rows = uD.addUser(user);
        List<User> list = uD.findUser(user);
//        int rows = uD.updateUser(user);
        System.out.println(list);
    }
}
