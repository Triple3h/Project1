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
import java.util.List;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password1 = req.getParameter("password1");
        String password2 = req.getParameter("password2");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String addrs = req.getParameter("addrs");
        String hobbys = req.getParameter("hobbys");
        String sex = req.getParameter("sex");

        String errMsg = "";
        int rows = 0;
        User user = new User();
        UserDao UD = new UserDao();
        try {
            if(username == null || "".equals(username))
                throw new Exception("用户名为空！");
            if(password1 == null || password2 == null
                    || "".equals(password1) || "".equals(password2))
                throw new Exception("密码不能为空！");
            if(!password1.equals(password2))
                throw new Exception("两次密码不一致！");

            List<User> list = UD.findUser(null);
            for(User u:list){
                if(username.equals(u.getUsername()))
                    throw new Exception("用户名重复！");
            }

            user.setUsername(username);
            user.setPassword(password1);
            user.setPhone(phone);
            user.setEmail(email);
            user.setAddrs(addrs);
            user.setHobbys(hobbys);
            user.setSex(sex);

            rows = UD.addUser(user);
            if(rows<=0)
                throw new Exception("注册未完成！");
        } catch (Exception e) {
            e.printStackTrace();
            errMsg = e.getMessage();
        }
        PrintWriter out = resp.getWriter();
        if("".equals(errMsg)){
            HttpSession session = req.getSession();
            session.setAttribute("userInfo",user);

            out.println("<script type='text/javascript'>alert('注册成功！');location.href = 'goodsQueryServlet';</script>");

        }else {
            out.println("<script type='text/javascript'>alert('注册失败："+errMsg+"');history.back();</script>");
        }
    }
}
