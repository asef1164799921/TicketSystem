package com.qlsf.service.impl;

import com.qlsf.mapper.UserMapper;
import com.qlsf.pojo.User;
import com.qlsf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    /*添加用户(用于注册用户)*/
    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public boolean selectUserByUserName(String username) {
        return userMapper.selectUserByUserName(username);
    }

    /*通过username和password查询用户，用于登录验证*/
    @Override
    public User selectUser(String username, String password) {
        return userMapper.selectUser(username,password);
    }

    /*分页查询所有用户列表，用于管理员查询所有用户*/
    @Override
    public List<User> selectAllUser(int pageNo, int pageSize) {
        return userMapper.selectAllUser(pageNo,pageSize);
    }
    /*编辑用户，用于管理员和用户自身编辑信息*/
    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }


}
