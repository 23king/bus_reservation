package com.bus.reservation.domain.service;

import com.bus.reservation.domain.model.BusReservationDetail;

import java.util.List;
import java.util.Map;

public interface BusReservationDetailService {
    List<BusReservationDetail> findReservList(Map<String, String> param);

    void updateReserv(long reservSeq, String status);
}
