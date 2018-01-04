package com.bus.reservation.api;

import com.bus.reservation.domain.repository.BusReservationRefundRepository;
import com.bus.reservation.domain.repository.MemberRepository;
import com.bus.reservation.domain.service.TravelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping(path = "/admin")
public class AdminController {

    @Autowired
    private BusReservationRefundRepository busReservationRefundRepository;
    @Autowired
    private TravelService travelService;
    @Autowired
    private MemberRepository memberRepository;


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

    @RequestMapping(value="/findReservList")
    public String findReservList(ModelMap model,
                                 @RequestParam Map<String, String> param){

        model.put("reservList", travelService.findReservList(param));

        return "admin_reservList";
    }

    @RequestMapping(value="cancelReservList")
    public String findCancelReservList(ModelMap model){
        model.put("refundList", busReservationRefundRepository.findAll());
        return "admin_cancelList";
    }

    @RequestMapping(value="/findUser")
    public String findUser(ModelMap model){
        model.put("userList",memberRepository.findAll());
        return "admin_userList";
    }
}
