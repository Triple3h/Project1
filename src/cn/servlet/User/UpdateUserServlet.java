package cn.servlet.User;

import cn.dao.UserDao;
import cn.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class UpdateUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int uid = Integer.parseInt(req.getParameter("uid"));
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String addrs = req.getParameter("addrs");
        String hobbys = req.getParameter("hobbys");
        String sex = req.getParameter("sex");

        int rows = 0;
        try {
            User user = new User();
            UserDao UD = new UserDao();

            user.setUid(uid);
            user.setUsername(username);
            user.setPassword(password);
            user.setPhone(phone);
            user.setEmail(email);
            user.setAddrs(addrs);
            user.setHobbys(hobbys);
            user.setSex(sex);

            rows = UD.updateUser(user);
            HttpSession session = req.getSession();
            session.setAttribute("userInfo",user);
        } catch (Exception e) {
            e.printStackTrace();
        }

        PrintWriter out = resp.getWriter();
        if(rows>0){
            out.println("<script type='text/javascript'>alert('修改成功！');location.href = 'loadUserDataServlet';</script>");
        }else {
            out.println("<script type='text/javascript'>alert('修改失败!');history.back();</script>");
        }
    }
}
