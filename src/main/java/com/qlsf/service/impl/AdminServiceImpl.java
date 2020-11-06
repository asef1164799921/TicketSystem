package com.qlsf.service.impl;

import com.qlsf.mapper.AdminMapper;
import com.qlsf.pojo.Order;
import com.qlsf.pojo.User;
import com.qlsf.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;

    @Override
    public List<User> selectAllUser() {
        return adminMapper.selectAllUser();
    }

    @Override
    public List<Order> adminSelectOrder(String uid, String phone, String orderId) {
        return adminMapper.adminSelectOrder(uid, phone, orderId);
    }
}
