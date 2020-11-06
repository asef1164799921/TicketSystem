package com.qlsf.service;

import com.qlsf.pojo.Order;
import com.qlsf.pojo.User;

import java.util.List;

public interface AdminService {
    List<User> selectAllUser();

    List<Order> adminSelectOrder(String uid,String phone,String orderId);
}
