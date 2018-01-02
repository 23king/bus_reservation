package com.bus.reservation.api;

import com.bus.reservation.domain.repository.BusReservationRepository;
import com.bus.reservation.domain.service.TravelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping(path = "/admin")
public class AdminController {

    @Autowired
    private BusReservationRepository busReservationRepository;
    @Autowired
    private TravelService travelService;

    @RequestMapping(value="/saveBusReservation")
    public String saveTravel(){
        return "admin_template";
    }

    @RequestMapping(value="/saveBusReservationApply", method= RequestMethod.POST)
    public String saveTravelApply(@RequestParam Map<String, Object> travelInfo, HttpServletRequest request){
        Map<String,String[]> params = request.getParameterMap();
        travelService.saveTravel(travelInfo, params);
        return "admin_list";
    }


}
