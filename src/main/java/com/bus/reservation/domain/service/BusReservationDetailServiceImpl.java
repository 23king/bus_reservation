package com.bus.reservation.domain.service;

import com.bus.reservation.domain.model.BusReservationDetail;
import com.bus.reservation.domain.repository.BusReservationDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class BusReservationDetailServiceImpl implements BusReservationDetailService{
    @Autowired
    private BusReservationDetailRepository busReservationDetailRepository;

    @Override
    public List<BusReservationDetail> findReservList(Map<String, String> param) {

        return null;
    }

    @Override
    public void updateReserv(long reservSeq, String status) {
        BusReservationDetail busReservationDetail = busReservationDetailRepository.findOne(reservSeq);
        busReservationDetail.setReservStatus(status);
        busReservationDetailRepository.save(busReservationDetail);
    }
}
