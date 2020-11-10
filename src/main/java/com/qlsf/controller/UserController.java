package com.qlsf.controller;

import com.qlsf.pojo.User;
import com.qlsf.service.UserService;
import com.qlsf.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

@Controller
public class UserController {
    private static final long serialVersionUID = 1L;
    /*post提交的请求是加密的*/
    @Autowired
    private UserService userService;

    //用户登录
    @RequestMapping(value = "userLogin",method = RequestMethod.POST)
    public String checkLogin(HttpServletRequest req,
                             @RequestParam String username,
                             @RequestParam String password,
                             Map<String,Object> map,
                             @RequestParam("validationCode") String vcode,
                             HttpSession session) throws ServletException, IOException {
        /*获取页面输入的数据*/
        System.out.println("username="+username);
        System.out.println("pwd="+password);
        if (vcode==null||!vcode.equals(session.getAttribute("randomCode"))){
            map.put("msg","验证码错误");
            map.put("code","500");
            return "userLogin";
        }
        User user = userService.selectUser(username, password);
        req.getSession().setAttribute("user",user);
        System.out.println(user);
        //去数据库验证
        //模拟数据，admin和123456，登陆成功，否则失败
        if(user !=null){
            String msg="登陆成功!";
            String code = "200";
            map.put("msg",msg);
            map.put("code",code);
            return "index";
        }else {
            //登陆失败跳转到login.jsp
            String msg="登陆失败!";
            String code = "500";
            map.put("msg",msg);
            map.put("code",code);
            return "userLogin";
        }
    }

    //用户注册
    @RequestMapping(value = "addUser",method = RequestMethod.POST)
    public String addUser(HttpServletRequest req,HttpServletResponse resp,User user, @RequestParam String password2 ,Map<String,Object> map) throws IOException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");

        System.out.println(user);

        PrintWriter out = resp.getWriter();
        if(user.getPassword().equals(password2)){
            User user1 = userService.selectUserByUserName(user.getUsername());
            User user2 = userService.selectUserByUid(user.getUid());
            User user3 = userService.selectUserByPhone(user.getPhone());
            if(user1 != null){
                out.print("<script>alert('用户名已存在!')</script>");
                out.flush();
                out.close();
                map.put("code","500");
                map.put("msg","用户名已存在!");
                return "addUser";
            }
            if(user2 != null){
                out.print("<script>alert('证件号码已存在!'); window.location='addUser.jsp' </script>");
                out.flush();
                out.close();
                map.put("code","500");
                map.put("msg","证件号码已存在!");
                return "addUser";
            }
            if(user3 != null){
                out.print("<script>alert('电话号码已存在!'); window.location='addUser.jsp' </script>");
                out.flush();
                out.close();
                map.put("code","500");
                map.put("msg","电话号码已存在!");
                return "addUser";
            }
            int i = userService.addUser(user);
            if(i>0) {
                map.put("msg", "success!");
                map.put("code", "200");
                req.getSession().setAttribute("user",user);
                return "index";
            }
            else {
                out.print("<script>alert('未知错误，请重试！!'); window.location='addUser.jsp' </script>");
                out.flush();
                out.close();
                map.put("msg", "未知错误，请重试！!");
                map.put("code", "200");
                return "addUser";
            }
        }else {
            out.print("<script>alert('两次输入密码不一致!'); window.location='addUser.jsp' </script>");
            out.flush();
            out.close();
            map.put("msg", "两次输入密码不一致，请重试！!");
            map.put("code", "200");
            return "addUser";
        }
    }

    //修改个人信息
    @RequestMapping(value = "EditUser1",method = RequestMethod.GET)
    public String EditUser(HttpServletRequest req,HttpServletResponse resp){
        /*获得userid的值来源 JS中?id="+userid"*/
        String userId = req.getParameter("userId");
        System.out.println(userId);
        //强转
        int userIdInt = Integer.parseInt(userId);
        //去数据库查询当前用户的数据
        User user = userService.selectUserById(userIdInt);
        req.setAttribute("user",user);
        return "userUpdate";
    }
    @RequestMapping(value = "EditUser2",method = RequestMethod.POST)
    public String EditUser(HttpServletRequest req,
                           HttpServletResponse resp,
                           User user,
                           Map<String,Object> map,
                           @RequestParam String password2) throws IOException, ServletException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        if(user.getPassword().equals(password2)){
            int i = userService.updateUser(user);
            if (i>0){
                User user1 = userService.selectUserById(user.getUserId());
                req.getSession().setAttribute("user",user1);
                map.put("code","200");
                map.put("msg","更改成功！");
                return "userUpdate";
            }
            map.put("code","500");
            map.put("msg","未知错误！");
            return "userUpdate";
        }
        else {
            map.put("code","500");
            map.put("msg","密码不一致！");
            return "userUpdate";
        }
    }

    //    退出登录
    @RequestMapping("/remove")
    public String remove(HttpSession session, User user) {
        session.setAttribute("user", null);
        return "index";
    }
}

