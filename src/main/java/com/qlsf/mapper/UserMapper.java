package com.qlsf.mapper;

import com.qlsf.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    /*添加用户*/
    int addUser(@Param("user") User user);

    //userId  查询
    User selectUserById(@Param("userId") int userId);

    /*通过username查询用户，判断是否存在该用户*/
    User selectUserByUserName(@Param("username") String username);

    /*通过username和password查询用户，用于登录验证*/
    User selectUser(@Param("username") String username, @Param("password") String password);

    /*查询所有用户列表，用于管理员查询所有用户*/
    List<User> selectAllUser(@Param("pageNo") int pageNo, @Param("pageSize") int pageSize);

    /*编辑用户，用于管理员和用户自身编辑信息*/
    int updateUser(@Param("user") User user);

    /*通过身份证号查询用户*/
    User selectUserByUid(@Param("uid") String uid);

    /*通过电话号查询用户*/
    User selectUserByPhone(@Param("phone") String phone);

    //删除用户
    int deleteUser(@Param("userId") int userId);
}
