package com.bus.reservation.domain.service;

import com.bus.reservation.domain.model.Travel;
import com.bus.reservation.domain.repository.TravelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class TravelServiceImpl implements TravelService {

    @Autowired
    private TravelRepository travelRepository;

    @Override
    public void saveTravel(Map<String, String> travelInfo) {
        Travel travel = new Travel();

        travelRepository.save(travel);

    }

    @Override
    public Travel reserveTravel(Map<String, String> travelInfo) {
        return null;
    }


}
