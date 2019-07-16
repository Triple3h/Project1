package cn.utils;

import java.sql.*;

public class JDBCutils {

    private static final String DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/project1?characterEncoding=utf8&useSSL=false&serverTimezone=CST";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "123456";

    public static Connection getConnection(){
        try {
            Class.forName(DRIVER_CLASS);
            return DriverManager.getConnection(URL,USERNAME,PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void closeAll(Connection conn, Statement sta, ResultSet rs){
        try {
            if(rs!=null)
                rs.close();
            if(sta!=null)
                sta.close();
            if(conn!=null)
                conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
