package com.bus.reservation.domain.service;

import java.util.Map;

public interface BusReservationRefundService {

    void cancelReservation(Map<String, String> params);
}
