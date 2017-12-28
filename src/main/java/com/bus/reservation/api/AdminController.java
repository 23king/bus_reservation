package com.bus.reservation.api;

import com.bus.reservation.domain.repository.BusReservationRepository;
import com.bus.reservation.domain.service.TravelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping(path = "/admin")
public class AdminController {

    @Autowired
    private BusReservationRepository busReservationRepository;
    @Autowired
    private TravelService travelService;

    @RequestMapping(value="/saveBusReservation")
    public String saveTravel(@RequestBody Map<String, String> travelInfo){
        travelService.saveTravel(travelInfo);
        return "travelCreateComplete";
    }


}
