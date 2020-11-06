package com.qlsf.mapper;

import com.qlsf.pojo.Flight;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FlightMapper {
    /*通过出发地，目的地和起飞时间模糊查询航班*/
    List<Flight> selectFlightInformation(@Param("origin") String origin, @Param("destination") String destination, @Param("originTime") String originTime);
}
