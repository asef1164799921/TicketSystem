package com.qlsf.service;

import com.qlsf.pojo.Flight;

import java.util.List;

public interface FlightService {
    /*通过出发地，目的地和起飞时间模糊查询航班*/
    List<Flight> selectFlight(String origin,String destination);
}
