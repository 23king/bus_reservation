package com.bus.reservation.domain.service;

import com.bus.reservation.domain.model.BusReservation;
import com.bus.reservation.domain.model.BusReservationDetail;
import com.bus.reservation.domain.model.Travel;
import com.bus.reservation.domain.repository.BusReservationDetailRepository;
import com.bus.reservation.domain.repository.BusReservationRepository;
import com.bus.reservation.domain.repository.TravelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class BusReservationDetailServiceImpl implements BusReservationDetailService{
    @Autowired
    private BusReservationDetailRepository busReservationDetailRepository;
    @Autowired
    private BusReservationRepository busReservationRepository;
    @Autowired
    private TravelRepository travelRepository;

    @Override
    public List<Travel> findReservList(Map<String, String> param) {
        if(param.isEmpty()) {
            List<Travel> travels = travelRepository.findAll();
            travels.stream().forEach( v -> {
                v.setReserv_cnt(busReservationRepository.countByTravelAndAndStatusEquals(v, 3));
            });
            return travels;
        }
        return null;
    }

    @Override
    public void updateReserv(long reservSeq, String status) {
        BusReservationDetail busReservationDetail = busReservationDetailRepository.findOne(reservSeq);
        busReservationDetail.setReservStatus(status);
        busReservationDetailRepository.save(busReservationDetail);
    }
}
