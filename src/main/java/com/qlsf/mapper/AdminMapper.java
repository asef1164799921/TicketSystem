package com.qlsf.mapper;

import com.qlsf.pojo.Admin;
import com.qlsf.pojo.Order;
import com.qlsf.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminMapper {
    //管理员登录
    Admin adminLogin(@Param("name") String name,@Param("password") String password);


    //查询用户
    List<User> adminSelectUser(@Param("uid") String uid,@Param("phone") String phone);


}
