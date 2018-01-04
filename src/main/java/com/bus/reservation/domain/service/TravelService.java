package com.bus.reservation.domain.service;

import com.bus.reservation.domain.model.Travel;

import java.util.List;
import java.util.Map;

public interface TravelService {
    void saveTravel(Map<String, Object> travelInfo, Map<String,String[]> params);
    long reserveTravel(Map<String, Object> travelInfo, Map<String,String[]> params);

    List<Travel> findTravelAll();

    void checkSeat(long travel_id);

    Map<String, Object> findTravel(long travel_id);

    List<Travel> findReservListByUser(String userId, String userName, String phoneNum);

    List<Travel> findReservList(Map<String, String> param);
}
