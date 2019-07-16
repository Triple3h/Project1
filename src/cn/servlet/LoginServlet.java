package cn.servlet;

import cn.dao.UserDao;
import cn.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        String errMsg = "";
        try {
            if(username == null || "".equals(username.trim()) || password == null || "".equals(password))
                throw new Exception("用户名或者密码不能为空！");

            User user = new User();
            UserDao UD = new UserDao();

            user.setUsername(username);
            user.setPassword(password);
            List<User> list = UD.findUser(user);

            if(list == null || list.size()<1) {
                throw new Exception("用户名或密码错误！");
            }

            HttpSession session = req.getSession();
            session.setAttribute("userInfo",list.get(0));

        } catch (Exception e) {
            e.printStackTrace();
            errMsg = e.getMessage();
        }

        PrintWriter out = resp.getWriter();
        if("".equals(errMsg)){
            out.println("<script type='text/javascript'>alert('登录成功！');</script>");
            resp.sendRedirect("goodsQueryServlet");
        }else {
            out.println("<script type='text/javascript'>alert('"+errMsg+"');history.back();</script>");
        }
    }
}
