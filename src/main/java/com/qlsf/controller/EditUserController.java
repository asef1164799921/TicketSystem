package com.qlsf.controller;

import com.qlsf.pojo.User;
import com.qlsf.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EditUserController {

    @Autowired
    private UserServiceImpl userServiceimpl;

//    @RequestMapping("EditUserController")
//    public class EditUserServlet extends HttpServlet {
//        /*url地址跳转执行的get请求*/
//        @Override
//        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
///*
//        获得userid的值来源 JS中?id="+userid"
//*/
//            String userId = req.getParameter("id");
//            System.out.println(userId);
//            //强转
//            int userIdInt = Integer.parseInt(userId);
//
//            String username = "...";
//
//            //去数据库查询当前用户的数据
//            User user = userServiceimpl.selectUserByUserName(username);
//            req.setAttribute("user", user);
//            req.getRequestDispatcher("/editUser.jsp").forward(req, resp);
//        }
//
//        @Override
//        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//            //防止中文乱码
//            req.setCharacterEncoding("UTF-8");
//            /*获取页面的数据，n个（绑定页面的name属性）*/
//            int id = Integer.parseInt(req.getParameter("userId"));
//            System.out.println(id);
//            String username = req.getParameter("username");
//            String password = req.getParameter("password");
//            String password2 = req.getParameter("password2");
//            String realname = req.getParameter("realname");
//            String email = req.getParameter("email");
//            String mobile = req.getParameter("mobile");
//            String sex = req.getParameter("sex");
//            int usertype = Integer.parseInt(req.getParameter("usertype"));
//            User user = new User();
//            user.setUsername(username);
//            user.setPassword(password);
//            user.setEmail(email);
//            user.setPhone(mobile);
//            user.setSex(sex);
//            if (password.equals(password2)) {
//                //set***传递页面的值
//
//                int i = userServiceimpl.updateUser(user);
//                if (i > 0) {
//                    //重定向
//                    resp.sendRedirect("SelectServlet");
//                    RequestDispatcher rd = req.getRequestDispatcher("/SelectServlet");
//                    rd.forward(req, resp);
//                }
//            } else {
//                //往jsp传递错误信息，el表达式接收
//                req.setAttribute("user",user);
//                req.setAttribute("msg", "两次密码不一致");
//                RequestDispatcher rd = req.getRequestDispatcher("/editUser.jsp");
//                rd.forward(req, resp);
//            }
//        }
//    }
}
