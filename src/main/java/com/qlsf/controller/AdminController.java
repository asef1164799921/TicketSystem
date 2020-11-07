package com.qlsf.controller;

import com.qlsf.pojo.Admin;
import com.qlsf.pojo.Flight;
import com.qlsf.pojo.User;
import com.qlsf.service.AdminService;
import com.qlsf.service.impl.AdminServiceImpl;
import com.qlsf.service.impl.OrderServiceImpl;
import com.qlsf.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;


    //管理员登录
    @RequestMapping(value = "adminLogin",method = RequestMethod.POST)
    public String adminLogin(HttpServletResponse resp, @RequestParam String name, @RequestParam String password, Map<String,Object> map){
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        System.out.println("输入的管理员名为："+name);
        System.out.println("输入的管理员密码为："+password);
        Admin admin = adminService.adminLogin(name, password);
        //参数校验
        if (admin != null){
            String msg = "login success";
            String code = "200";
            return "adminIndex";
        } else {
            PrintWriter out= null;
            try {
                out = resp.getWriter();
            } catch (IOException e) {
                e.printStackTrace();
            }
            out.print("<script>alert('用户名或密码错误！');location.href='adminLogin.jsp';</script>");
            out.flush();
            out.close();
            return "adminLogin";
        }
    }

    //管理员查询用户列表
    @RequestMapping("adminSelectUser")
    public void adminSelectUser(HttpServletResponse resp, HttpServletRequest req, @RequestParam(required = false) String uid, @RequestParam(required = false) String phone) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        System.out.println(uid);
        List<User> userList = adminService.adminSelectUser(uid,phone);
        for (User user : userList) {
            System.out.println(user);
        }
        req.getSession().setAttribute("userList",userList);
        req.getRequestDispatcher("/adminUser.jsp").forward(req,resp);
    }


}
