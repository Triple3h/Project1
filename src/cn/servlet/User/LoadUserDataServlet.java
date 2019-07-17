package cn.servlet.User;

import cn.dao.UserDao;
import cn.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class LoadUserDataServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String operate = req.getParameter("operate");
        HttpSession session = req.getSession();

        User user = (User) session.getAttribute("userInfo");
//        UserDao UD = new UserDao();
//        List<User> list = UD.findUser(user);

        req.setAttribute("user", user);

        if("update".equals(operate)){
            req.getRequestDispatcher("UpdateUser.jsp").forward(req,resp);
        }else if("updatePwd".equals(operate)){
            req.getRequestDispatcher("UpdatePwd.jsp").forward(req,resp);
        } else{
            req.getRequestDispatcher("UserData.jsp").forward(req, resp);
        }
    }
}
