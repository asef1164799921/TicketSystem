package com.qlsf.controller;

import com.qlsf.pojo.Admin;
import com.qlsf.pojo.Flight;
import com.qlsf.pojo.User;
import com.qlsf.service.AdminService;
import com.qlsf.service.UserService;
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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;
    @Autowired
    private UserService userService;


    //管理员登录
    @RequestMapping(value = "adminLogin",method = RequestMethod.POST)
    public String adminLogin(HttpServletResponse resp,HttpServletRequest req, @RequestParam String name, @RequestParam String password, Map<String,Object> map){
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        System.out.println("输入的管理员名为："+name);
        System.out.println("输入的管理员密码为："+password);
        Admin admin = adminService.adminLogin(name, password);
        //参数校验
        if (admin != null){
            String msg = "login success";
            String code = "200";
            //存放管理员信息
            HttpSession session = req.getSession();
            session.setAttribute("adminName",admin.getName());
            return "adminIndex";
        } else {
            PrintWriter out= null;
            try {
                out = resp.getWriter();
            } catch (IOException e) {
                e.printStackTrace();
            }
            map.put("code","500");
            map.put("msg","用户名或密码错误!");
            out.print("<script>alert('用户名或密码错误！');location.href='adminLogin.jsp';</script>");
            out.flush();
            out.close();
            return "adminLogin";
        }
    }

    //管理员查询用户列表
    @RequestMapping("adminSelectUser")
    public String adminSelectUser(HttpServletResponse resp, HttpServletRequest req, @RequestParam(required = false) String uid, @RequestParam(required = false) String phone) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        System.out.println(uid);
        List<User> userList = adminService.adminSelectUser(uid,phone);
        for (User user : userList) {
            System.out.println(user);
        }
        req.getSession().setAttribute("userList",userList);
        return "adminUser";
    }

    //管理员删除用户
    @RequestMapping("deleteUser")
    public String deleteUser(HttpServletResponse resp,@RequestParam int userId,Map<String,Object> map) throws IOException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        int i = userService.deleteUser(userId);
        PrintWriter out = resp.getWriter();
        if (i != 1){
            map.put("code","200");
            map.put("msg","删除失败！");
            out.print("<script>alert('删除失败！')</script>");
            out.flush();
            out.close();
            return "redirect:/adminSelectUser";
        }
        else {
            map.put("code","200");
            map.put("msg","删除成功！");
            out.print("<script>alert('删除成功！')</script>");
            out.flush();
            out.close();
            return "adminUser";
        }
    }


}
