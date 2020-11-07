package com.qlsf.service;

import com.qlsf.pojo.Admin;
import com.qlsf.pojo.Order;
import com.qlsf.pojo.User;

import java.util.List;

public interface AdminService {
    //管理员登录
    Admin adminLogin(String name,String password);


    //用户模块
    //管理员查询用户
    List<User> adminSelectUser(String uid,String phone);



    //航班模块
    //

    //订单模块
    //管理员查询订单
    List<Order> adminSelectOrder(String uid,String phone,String orderId);
}
