package com.qlsf.controller;

import com.qlsf.mapper.UserMapper;
import com.qlsf.pojo.User;
import com.qlsf.service.UserService;
import com.qlsf.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;

@Controller
public class UserController {
    private static final long serialVersionUID = 1L;
    /*post提交的请求是加密的*/
    @Autowired
    private UserServiceImpl userServiceImpl;

    @RequestMapping(value = "userController",method = RequestMethod.POST)
    public String checkLogin(@RequestParam String username, @RequestParam String password, Map<String,Object> map) throws ServletException, IOException {
        /*获取页面输入的数据*/
        System.out.println("username="+username);
        System.out.println("pwd="+password);
        //创建servlet对象
        User user = userServiceImpl.selectUser(username, password);
        System.out.println(user);
        //去数据库验证
        //模拟数据，admin和123456，登陆成功，否则失败
        if(user !=null){
            String msg="login success!";
            String code = "200";
            map.put("msg",msg);
            map.put("code",code);
            return "/index.jsp";
        }else {
            //登陆失败跳转到login.jsp
            String msg="login fail!";
            String code = "500";
            map.put("msg",msg);
            map.put("code",code);
            return "/login.jsp";
        }
    }

}
