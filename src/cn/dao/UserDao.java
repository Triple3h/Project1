package cn.dao;

import cn.entity.Goods;
import cn.entity.User;
import cn.utils.JDBCutils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {

    public List<User> findUser(User user){
        Connection conn = null;
        PreparedStatement sta = null;
        ResultSet rs = null;
        List<User> usersList = new ArrayList<>();

        try {
            conn = JDBCutils.getConnection();

            StringBuffer sf = new StringBuffer();
            List<Object> list = new ArrayList<>();

            sf.append("select *from user where 1=1 ");
            if(user!=null){
                if(user.getuId()!=0){
                    sf.append("and gid = ? ");
                    list.add(user.getuId());
                }
                if(user.getUsername()!=null){
                    sf.append("and username = ? ");
                    list.add(user.getUsername());
                }

                if(user.getPassword()!=null){
                    sf.append("and password = ?");
                    list.add(user.getPassword());
                }
            }

            sta = conn.prepareStatement(sf.toString());

            if(list!=null && list.size()>0){
                for(int i=0;i<list.size();i++){
                    sta.setObject(i+1,list.get(i));
                }
            }
            rs = sta.executeQuery();

            while (rs.next()){
                User user1 = new User();

                user.setuId(rs.getInt("uid"));
                user.setUsername(rs.getString("username"));
                user.setSex(rs.getString("sex"));
                user.setHobbys(rs.getString("hobbys"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
                user.setAddrs(rs.getString("addrs"));
                user.setFlag(rs.getBoolean("flag"));
                usersList.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCutils.closeAll(conn,sta,rs);
        }
        return usersList;
    }

    public int addUser (User user){
        Connection conn = null;
        PreparedStatement sta = null;
        ResultSet rs = null;

        try {

            //`username``password``sex``hobbys`
            // `phone``email``addrs``logintime`
            conn = JDBCutils.getConnection();
            StringBuffer sf = new StringBuffer();
            sf.append("insert into user (username,password,sex,hobbys," +
                    "phone,email,addrs) values(?,?,?,?,?,?,?)");

            List<Object> list = new ArrayList<>();
            list.add(user.getUsername());
            list.add(user.getPassword());
            list.add(user.getSex());
            list.add(user.getHobbys());
            list.add(user.getPhone());
            list.add(user.getEmail());
            list.add(user.getAddrs());

            sta = conn.prepareStatement(sf.toString());
            if(list!=null && list.size()>0){
                for(int i=0;i<list.size();i++){
                    sta.setObject(i+1,list.get(i));
                }
            }

            int rows = sta.executeUpdate();
            return rows;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCutils.closeAll(conn,sta,rs);
        }
        return 0;
    }

}