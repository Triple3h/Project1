package cn.filter;

import cn.entity.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("System init...");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) servletRequest;

        String reqURI = req.getRequestURI();
        String newURI = reqURI.toLowerCase();
        if(newURI.startsWith("/login") || newURI.startsWith("/register")){
            filterChain.doFilter(servletRequest,servletResponse);
        }else{
            HttpSession session = req.getSession();
            User user = (User)session.getAttribute("userInfo");
            if(user!=null){
                filterChain.doFilter(servletRequest,servletResponse);
            }else{
                PrintWriter out = servletResponse.getWriter();
                out.println("<script type='text/javascript'>alert('你没有登录！');location.href='Login.jsp';</script>");
            }
        }
    }

    @Override
    public void destroy() {
        System.out.println("System destroy...");
    }
}
