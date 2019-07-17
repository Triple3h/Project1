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
import java.util.List;

public class UpdatePwdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String oldPassword = req.getParameter("oldPassword");
        String newPassword1 = req.getParameter("newPassword1");
        String newPassword2 = req.getParameter("newPassword2");

        UserDao UD = new UserDao();
        HttpSession session = req.getSession();
        User userInfo = (User)session.getAttribute("userInfo");

        String errMsg = "";
        int rows = 0;
        try {
            if(!oldPassword.equals(userInfo.getPassword()))
                throw new Exception("旧密码错误！");
            if(newPassword1 == null || "".equals(newPassword1)
                    || newPassword2 == null || "".equals(newPassword2))
                throw new Exception("密码不能为空！");
            if(!newPassword1.equals(newPassword2))
                throw new Exception("两次密码不一致！");

            User user = new User();
            user.setUsername(username);
            user.setPassword(newPassword1);

            rows = UD.updateUser(user);
            if(rows<=0)
                throw new Exception("修改未完成！");

        } catch (Exception e) {
            e.printStackTrace();
            errMsg = e.getMessage();
        }

        PrintWriter out = resp.getWriter();
        if("".equals(errMsg)){
            out.println("<script type='text/javascript'>alert('修改成功！');location.href = 'loadUserDataServlet';</script>");
        }else {
            out.println("<script type='text/javascript'>alert('修改失败:"+errMsg+"');history.back();</script>");
        }

    }
}
