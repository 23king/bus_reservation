package com.bus.reservation.api;

import com.bus.reservation.domain.model.BusReservation;
import com.bus.reservation.domain.repository.BusReservationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(path = "/admin")
public class AdminController {

    @Autowired
    private BusReservationRepository busReservationRepository;

    @GetMapping(value="/saveBusReservation")
    public void saveBusReservation(@RequestBody BusReservation busReservation){
        busReservationRepository.save(busReservation);
    }
}
