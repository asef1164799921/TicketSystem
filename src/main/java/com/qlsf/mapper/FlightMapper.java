package com.qlsf.mapper;

import com.qlsf.pojo.Flight;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FlightMapper {
    /*通过出发地，目的地和起飞时间模糊查询航班*/
    List<Flight> selectFlightInformation(@Param("origin") String origin, @Param("destination") String destination, @Param("originTime") String originTime);

    //管理员页面按条件查询航班
    List<Flight> adminSelectFlight(@Param("origin") String origin, @Param("destination") String destination, @Param("originTime") String originTime);

    //查询航班
    Flight selectFlight(@Param("flightId") int flightId);

    //更新航班
    int editFlight(@Param("flight") Flight flight);
}
