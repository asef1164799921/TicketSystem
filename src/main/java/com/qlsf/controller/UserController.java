package com.qlsf.controller;

import com.qlsf.pojo.User;
import com.qlsf.service.UserService;
import com.qlsf.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletException;
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
    public String checkLogin(@RequestParam String username,
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
    public String addUser(HttpServletResponse resp,User user, @RequestParam String password2 ,Map<String,Object> map) throws IOException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");

        System.out.println(user);

        PrintWriter out = resp.getWriter();
        if(user.getPassword().equals(password2)){
            User user1 = userService.selectUserByUserName(user.getUsername());
            User user2 = userService.selectUserByUid(user.getUid());
            User user3 = userService.selectUserByPhone(user.getPhone());
            if(user1 != null){
                out.print("<script>alert('用户名已存在!'); window.location='addUser.jsp' </script>");
                out.flush();
                out.close();
                return "addUser";
            }
            if(user2 != null){
                out.print("<script>alert('证件号码已存在!'); window.location='addUser.jsp' </script>");
                out.flush();
                out.close();
                return "addUser";
            }
            if(user3 != null){
                out.print("<script>alert('电话号码已存在!'); window.location='addUser.jsp' </script>");
                out.flush();
                out.close();
                return "addUser";
            }
            int i = userService.addUser(user);
            if(i>0) {
                String msg = "success!";
                String code = "200";
                map.put("msg", msg);
                map.put("code", code);
                return "index";
            }
            else {
                out.print("<script>alert('未知错误，请重试！!'); window.location='addUser.jsp' </script>");
                out.flush();
                out.close();
                return "addUser";
            }
        }else {
            out.print("<script>alert('两次输入密码不一致!'); window.location='addUser.jsp' </script>");
            out.flush();
            out.close();
            return "addUser";
        }
    }

    //修改个人信息


}
