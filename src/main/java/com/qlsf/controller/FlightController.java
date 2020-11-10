package com.qlsf.controller;

import com.qlsf.pojo.Flight;
import com.qlsf.pojo.User;
import com.qlsf.service.FlightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
public class FlightController {

    @Autowired
    private FlightService flightService;
    //首页按条件查询航班信息
    @RequestMapping(value = "selectFlightInformation")
    public String selectFlightInformation(HttpServletRequest req, HttpServletResponse resp, @RequestParam String origin, @RequestParam String destination, @RequestParam String originTime, Map<String,Object> map) throws IOException, ServletException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        List<Flight> flights = flightService.selectFlightInformation(origin, destination, originTime);
        req.getSession().setAttribute("flight",flights);
        return "index2";
    }

    //管理员模块按条件查询航班
    //首页按条件查询航班信息
    @RequestMapping(value = "adminSelectFlight")
    public String adminSelectFlight(HttpServletRequest req, HttpServletResponse resp, @RequestParam String origin, @RequestParam String destination, @RequestParam String originTime, Map<String,Object> map) throws IOException, ServletException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        List<Flight> flights = flightService.adminSelectFlight(origin, destination, originTime);
        req.getSession().setAttribute("flight",flights);
        return "adminFlight";
    }

    //修改航班信息
    @RequestMapping(value = "EditFlight1",method = RequestMethod.GET)
    public String EditFlight(HttpServletRequest req,HttpServletResponse resp){
        String flightId = req.getParameter("flightId");
        System.out.println(flightId);
        //强转
        int flightIdInt = Integer.parseInt(flightId);
        //去数据库查询当前用户的数据
        Flight flights = flightService.selectFlight(flightIdInt);
        req.setAttribute("flights",flights);
        return "flightUpdate";
    }
    @RequestMapping(value = "EditFlight2",method = RequestMethod.POST)
    public String EditFlight(HttpServletRequest req,
                           HttpServletResponse resp,
                           Flight flight,
                           Map<String,Object> map) throws IOException, ServletException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        System.out.println(flight);
            int i = flightService.editFlight(flight);
            if (i>0){
                Flight flight1 = flightService.selectFlight(flight.getFlightId());
                req.getSession().setAttribute("flights",flight1);
                map.put("code","200");
                map.put("msg","更改成功！");
                return "flightUpdate";
            }
            map.put("code","500");
            map.put("msg","未知错误！");
            return "flightUpdate";
        }
    }


