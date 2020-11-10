package com.qlsf.service.impl;

import com.qlsf.mapper.AdminMapper;
import com.qlsf.pojo.Admin;
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
    public Admin adminLogin(String name, String password) {
        return adminMapper.adminLogin(name,password);
    }

    @Override
    public List<User> adminSelectUser(String uid,String phone) {
        return adminMapper.adminSelectUser(uid,phone);
    }

}
