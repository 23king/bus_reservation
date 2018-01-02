package com.bus.reservation.domain.service;

import com.bus.reservation.domain.model.Travel;

import java.util.List;
import java.util.Map;

public interface TravelService {
    void saveTravel(Map<String, Object> travelInfo, Map<String,String[]> params);

    Travel reserveTravel(Map<String, Object> travelInfo);

    List<Travel> findTravelAll();

    void checkSeat(long travel_id);

    Travel findTravel(long travel_id);

    List<Travel> findReservListByUser(String userId, String userName, String phoneNum);
}
