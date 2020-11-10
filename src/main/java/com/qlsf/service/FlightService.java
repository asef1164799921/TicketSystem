package com.qlsf.service;

import com.qlsf.pojo.Flight;

import java.util.List;

public interface FlightService {
    /*通过出发地，目的地和起飞时间模糊查询航班*/
    List<Flight> selectFlightInformation(String origin,String destination,String originTime);

    //管理员动态查询航班
    List<Flight> adminSelectFlight(String origin,String destination,String originTime);

    //查询航班
    Flight selectFlight(int flightId);

    //更新航班
    int editFlight(Flight flight);
}
