package com.bus.reservation.api;

import com.bus.reservation.domain.model.BusReservation;
import com.bus.reservation.domain.model.BusTemplate;
import com.bus.reservation.domain.repository.BusReservationRepository;
import com.bus.reservation.domain.repository.BusTemplateRepository;
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
    private BusTemplateRepository busTemplateRepository;
    @Autowired
    private BusReservationRepository busReservationRepository;

    @GetMapping(value="/getBusTemplateAll")
    public List<BusTemplate> getBusTemplate(){
        return busTemplateRepository.findAll();
    }

    @GetMapping(value="/saveBusReservation")
    public void saveBusReservation(@RequestBody BusReservation busReservation){
        busReservationRepository.save(busReservation);
    }
}
