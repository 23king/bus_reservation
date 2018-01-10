package com.bus.reservation.api;

import com.bus.reservation.domain.model.BusReservation;
import com.bus.reservation.domain.model.Travel;
import com.bus.reservation.domain.model.User;
import com.bus.reservation.domain.repository.BusReservationDetailRepository;
import com.bus.reservation.domain.repository.BusReservationRepository;
import com.bus.reservation.domain.repository.MemberRepository;
import com.bus.reservation.domain.repository.TravelRepository;
import com.bus.reservation.domain.service.BusReservationService;
import com.bus.reservation.domain.service.TravelService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping(path = "/reservation")
public class BusReservationController {
    @Autowired
    private BusReservationDetailRepository busReservationDetailRepository;
    @Autowired
    private TravelService travelService;
    @Autowired
    private TravelRepository travelRepository;
    @Autowired
    private MemberRepository memberRepository;

    @RequestMapping(value="/findUser")
    public List<User> findUser(@RequestParam String user_name,@RequestParam String user_phone){
        return memberRepository.findAllByUserNameAndUserPhone(user_name, user_phone);
    }

    @RequestMapping(value="/findReservations")
    public String findBusReservations(){
        return "checkAccount";
    }

    @RequestMapping(value="/busReservCheckList", method = RequestMethod.POST)
    public String busReservCheckList(ModelMap model, @RequestParam String userId,
                                     @RequestParam String userName,
                                     @RequestParam String phoneNum){
        model.put("travels",travelService.findReservListByUser(userId, userName, phoneNum));
        model.put("userId",userId);
        model.put("userName",userName);
        model.put("phoneNum",phoneNum);
        return "reservList";
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
        System.out.println("param : " + param.toString());
        model.put("param", param);
        model.put("travelInfo", travelService.findTravel(Long.parseLong(param.get("reserv_id"))));
        return "reservation";
    }

    @RequestMapping(value="/cancelReserv")
    public String cancelReserv(ModelMap model, @RequestParam Map<String, String> params){
        model.put("reservInfo", busReservationDetailRepository.findOne(Long.parseLong(params.get("reserv_id"))));
        model.put("userId", params.get("userId"));
        model.put("userName", params.get("userName"));
        model.put("phoneNum", params.get("phoneNum"));
        return "reservationCancel";
    }

    @RequestMapping(value="/complete")
    public String resrvComplete(ModelMap model, @RequestParam String revc_id){
        model.put("data", travelService.getCompleteData(revc_id));
        return "complete";
    }

}
