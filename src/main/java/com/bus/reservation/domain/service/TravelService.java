package com.bus.reservation.domain.service;

import com.bus.reservation.domain.model.Travel;

import java.util.Map;

public interface TravelService {
    void saveTravel(Map<String, String> travelInfo);

    Travel reserveTravel(Map<String, String> travelInfo);

}
