package com.bus.reservation.domain.service;

import com.bus.reservation.domain.model.BusReservation;
import com.bus.reservation.domain.model.BusReservationDetail;
import com.bus.reservation.domain.model.Travel;
import com.bus.reservation.domain.repository.BusReservationDetailRepository;
import com.bus.reservation.domain.repository.BusReservationRepository;
import com.bus.reservation.domain.repository.TravelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class BusReservationDetailServiceImpl implements BusReservationDetailService{
    @Autowired
    private BusReservationDetailRepository busReservationDetailRepository;
    @Autowired
    private BusReservationRepository busReservationRepository;
    @Autowired
    private TravelRepository travelRepository;

    @Override
    public List<BusReservationDetail> findReservList(Map<String, String> param) {
        return busReservationDetailRepository.findAll().stream()
                .filter( reserv ->  Integer.parseInt(reserv.getReservStatus())<3)
                .filter( reserv -> {
                    if(!StringUtils.isEmpty(param.get("reservDate"))){
                        if(reserv.getCreateDateByYYYYMMDD().equals(param.get("reservDate")))
                            return true;
                        else
                            return false;
                    }else{
                        return true;
                    }
                })
                .filter( reserv -> {
                    if(!StringUtils.isEmpty(param.get("departureDate"))){
                        if(reserv.getTravel().getDepartureDateByYYYYMMDD().equals(param.get("departureDate")))
                            return true;
                        else
                            return false;
                    }else{
                        return true;
                    }
                })
                .filter( reserv -> {
                    if(!StringUtils.isEmpty(param.get("destination"))){
                        if(reserv.getTravel().getDestination().equals(param.get("destination")))
                            return true;
                        else
                            return false;
                    }else{
                        return true;
                    }
                })
                .filter( reserv -> {
                    if(!StringUtils.isEmpty(param.get("bankAccountName"))){
                        if(reserv.getBankAccountName().equals(param.get("bankAccountName")))
                            return true;
                        else
                            return false;
                    }else{
                        return true;
                    }
                })
                .collect(Collectors.toList());
    }

    @Override
    public void updateReserv(long reservSeq, String status) {
        BusReservationDetail busReservationDetail = busReservationDetailRepository.findOne(reservSeq);
        busReservationDetail.setReservStatus(status);
        busReservationDetailRepository.save(busReservationDetail);
    }
}
