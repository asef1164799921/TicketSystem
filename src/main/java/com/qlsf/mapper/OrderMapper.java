package com.qlsf.mapper;

import com.qlsf.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderMapper {

    //管理员通过身份证、电话号、订单号查询订单
    List<Order> adminSelectOrder(@Param("uid") String uid, @Param("phone") String phone, @Param("orderId") String orderId);

    //管理员编辑订单
    Order adminSelectById(@Param("orderId") String orderId);

    //更新订单
    int updateOrder(@Param("order") Order order);
}
