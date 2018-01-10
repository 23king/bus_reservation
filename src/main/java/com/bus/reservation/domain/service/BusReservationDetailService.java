package com.bus.reservation.domain.service;

import com.bus.reservation.domain.model.BusReservationDetail;
import com.bus.reservation.domain.model.Travel;

import java.util.List;
import java.util.Map;

public interface BusReservationDetailService {
    List<Travel> findReservList(Map<String, String> param);

    void updateReserv(long reservSeq, String status);
}
