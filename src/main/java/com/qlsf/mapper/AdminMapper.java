package com.qlsf.mapper;

import com.qlsf.pojo.Order;
import com.qlsf.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminMapper {

    List<User> selectAllUser();

    List<Order> adminSelectOrder(@Param("uid") String uid, @Param("phone") String phone, @Param("orderId") String orderId);
}
