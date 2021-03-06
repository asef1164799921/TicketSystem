package com.qlsf.service;

import com.qlsf.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
    /*添加用户(用于注册用户)*/
    int addUser(User user);

    //userid 查询
    User selectUserById(int userId);

    /*通过username查询用户，判断是否存在该用户*/
    User selectUserByUserName(String username);

    /*通过username和password查询用户，用于登录验证*/
    User selectUser(String username,String password);

    /*查询所有用户列表，用于管理员查询所有用户*/
    List<User> selectAllUser(int pageNo,int pageSize);

    /*编辑用户，用于管理员和用户自身编辑信息*/
    int updateUser(User user);

    /*通过身份证号查询用户*/
    User selectUserByUid(String uid);

    /*通过电话号查询用户*/
    User selectUserByPhone(String phone);

    //删除用户
    int deleteUser(int userId);
}
