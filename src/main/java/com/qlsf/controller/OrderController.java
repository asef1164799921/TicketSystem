package com.qlsf.controller;

import com.qlsf.pojo.Order;
import com.qlsf.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    //管理员查询订单
    @RequestMapping(value = "adminSelectOrder",method = RequestMethod.POST)
    public String adminSelectOrder(HttpServletRequest req,
                                   HttpServletResponse resp,
                                   @RequestParam String uid,
                                   @RequestParam String orderId,
                                   @RequestParam String phone,
                                   Map<String,Object> map){
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        List<Order> orders = orderService.adminSelectOrder(uid, phone, orderId);
        req.getSession().setAttribute("orderList",orders);
        return "adminOrder";
    }

    //管理员编辑订单
    @RequestMapping(value = "EditOrder1",method = RequestMethod.GET)
    public String editOrder(HttpServletResponse resp,
                            HttpServletRequest req){
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        String orderId = req.getParameter("orderId");
        System.out.println(orderId);
        Order order = orderService.adminSelectById(orderId);
        req.getSession().setAttribute("order",order);
        return "orderUpdate";
    }

    @RequestMapping(value = "EditOrder2",method = RequestMethod.POST)
    public String editOrder(Order order,HttpServletRequest req,HttpServletResponse resp,Map<String,Object> map){
        System.out.println(order.getUid());
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        int i = orderService.updateOrder(order);

        if(i != 1){
            map.put("code","500");
            map.put("msg","更新失败!");
            return "orderUpdate";
        }
        req.getSession().setAttribute("order",order);
        map.put("code","200");
        map.put("msg","更新成功");
        return "orderUpdate";
    }

}
