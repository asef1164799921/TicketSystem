package com.qlsf.controller;

import com.qlsf.pojo.Flight;
import com.qlsf.service.impl.FlightServiceImpl;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

@Controller
public class FlightController {

    @Autowired
    private FlightServiceImpl flightServiceImpl;
    //按条件查询航班信息
    @RequestMapping("selectFlightInformation")
    public void selectFlightInformation(HttpServletRequest req, HttpServletResponse resp, @RequestParam String origin, @RequestParam String destination, @RequestParam String originTime, Map<String,Object> map) throws IOException, ServletException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        List<Flight> flights = flightServiceImpl.selectFlightInformation(origin, destination, originTime);
/*        JSONArray jsonArray = JSONArray.fromObject(flights);
        PrintWriter writer = resp.getWriter();
        writer.append(jsonArray.toString());*/
        req.getSession().setAttribute("flight",flights);
        req.getRequestDispatcher("/userList.jsp").forward(req,resp);
    }



}
