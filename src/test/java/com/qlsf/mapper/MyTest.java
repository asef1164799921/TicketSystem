package com.qlsf.mapper;

import com.qlsf.pojo.Order;
import com.qlsf.pojo.User;
import com.qlsf.service.AdminService;
import com.qlsf.service.impl.AdminServiceImpl;
import com.qlsf.service.impl.UserServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class MyTest {
    @Test
    public void test1(){

        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserServiceImpl service = context.getBean(UserServiceImpl.class);
        User user = new User();
        user.setUsername("王五");
        user.setPassword("123456");
        user.setSex("男");
        user.setUid("111111");
        user.setPhone("1111111");
        int i = service.addUser(user);
        System.out.println(i);
    }

    @Test
    public void test2(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserServiceImpl bean = context.getBean(UserServiceImpl.class);
        User user = bean.selectUser("大力", "787878");
        System.out.println(user);
    }

    @Test
    public void test4(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserServiceImpl bean = context.getBean(UserServiceImpl.class);
        User user = bean.selectUser("大力", "787878");
        user.setSex("男");
        user.setPhone("111111");
        int i = bean.updateUser(user);
        System.out.println(i);
    }

    @Test
    public void test5(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        AdminService bean = context.getBean(AdminService.class);
        List<User> users = bean.adminSelectUser("370123",null);
        for (User user : users) {
            System.out.println(user);
        }
    }

   /* @Test
    public void test6(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        AdminServiceImpl bean = context.getBean(AdminServiceImpl.class);
        List<Order> orders = bean.adminSelectOrder(null, "111111", null);
        for (Order order : orders) {
            System.out.println(order);
        }
    }*/
}
