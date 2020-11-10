package com.qlsf.service;

import com.qlsf.pojo.Order;

import java.util.List;

public interface OrderService {
    //管理员查询订单
    List<Order> adminSelectOrder(String uid, String phone, String orderId);

    Order adminSelectById(String orderId);

    int updateOrder(Order order);
}
