package com.qlsf.service.impl;

import com.qlsf.mapper.FlightMapper;
import com.qlsf.pojo.Flight;
import com.qlsf.service.FlightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FlightServiceImpl implements FlightService {
    @Autowired
    private FlightMapper flightMapper;

    @Override
    public List<Flight> selectFlightInformation(String origin, String destination, String originTime) {
        return flightMapper.selectFlightInformation(origin,destination,originTime);
    }

    @Override
    public List<Flight> adminSelectFlight(String origin, String destination, String originTime) {
        return flightMapper.adminSelectFlight(origin,destination,originTime);
    }

    @Override
    public Flight selectFlight(int flightId) {
        return flightMapper.selectFlight(flightId);
    }

    @Override
    public int editFlight(Flight flight) {
        return flightMapper.editFlight(flight);
    }
}
