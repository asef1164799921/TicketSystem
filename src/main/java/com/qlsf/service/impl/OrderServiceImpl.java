package com.qlsf.service.impl;

import com.qlsf.mapper.OrderMapper;
import com.qlsf.pojo.Order;
import com.qlsf.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;

    //管理员查询订单
    @Override
    public List<Order> adminSelectOrder(String uid, String phone, String orderId) {
        return orderMapper.adminSelectOrder(uid, phone, orderId);
    }

    @Override
    public Order adminSelectById(String orderId) {
        return orderMapper.adminSelectById(orderId);
    }

    @Override
    public int updateOrder(Order order) {
        return orderMapper.updateOrder(order);
    }
}
