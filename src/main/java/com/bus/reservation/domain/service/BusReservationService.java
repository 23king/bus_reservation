package com.bus.reservation.domain.service;

import com.bus.reservation.domain.model.Travel;

import java.util.List;

public interface BusReservationService {
    List<Travel> findTravelAll();
}
