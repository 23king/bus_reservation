package com.bus.reservation.api;

import com.bus.reservation.domain.model.BusReservation;
import com.bus.reservation.domain.model.Travel;
import com.bus.reservation.domain.model.User;
import com.bus.reservation.domain.repository.BusReservationRepository;
import com.bus.reservation.domain.repository.MemberRepository;
import com.bus.reservation.domain.service.BusReservationService;
import com.bus.reservation.domain.service.TravelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(path = "/reservation")
public class BusReservationController {
    @Autowired
    private BusReservationService busReservationService;
    @Autowired
    private TravelService travelService;
    @Autowired
    private MemberRepository memberRepository;

    @RequestMapping(value="/findUser")
    public User findUser(@RequestParam String user_name,@RequestParam String user_phone){
        return memberRepository.findByUserNameAndUserPhone(user_name, user_phone);
    }

    @RequestMapping(value="/findReservations")
    public BusReservation findBusReservations(){
        return null;
    }

    @RequestMapping(value="/list")
    public String findTravelAll(ModelMap model){
        model.put("travels", travelService.findTravelAll());
        return "list";
    }

    @RequestMapping(value="/busList")
    public String reservList(ModelMap model){
        model.put("travels", travelService.findTravelAll());
        return "list";
    }

    @RequestMapping(value="/bus")
    public String reservBus(ModelMap model, @RequestParam long travel_id){
        travelService.checkSeat(travel_id);
        model.put("travel_id",travel_id);
        return "registerAccount";
    }

    @RequestMapping(value="/busSeatChoice")
    public String busSeatChoice(ModelMap model, @RequestParam Map<String,String> param){
        model.put("param", param);
        model.put("travelInfo", travelService.findTravel(Long.parseLong(param.get("travel_id"))));
        return "reservation";
    }

    @RequestMapping(value="/reserveTravel")
    public String reservation(@RequestBody Map<String, Object> travelInfo, ModelMap model){
        model.put("travel", travelService.reserveTravel(travelInfo));
        return "";
    }

}
