package com.qlsf.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class adminLoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        HttpSession session = req.getSession();
        Object object = session.getAttribute("adminName");
        //剔除不需要过滤的页面
        String path = req.getRequestURI();
        //当前用户名没有登陆并且url地址又不包含login.jsp,loginServlet
        if (object == null&&
                path.indexOf("adminLogin")<0&&
                path.indexOf("admin")>0&&
                path.indexOf("style")<0){
            resp.sendRedirect("adminLogin.jsp");
        }else {
            filterChain.doFilter(servletRequest,servletResponse);//放行
        }
    }
    @Override
    public void destroy() {

    }
}
