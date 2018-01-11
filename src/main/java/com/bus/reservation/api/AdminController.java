package com.bus.reservation.api;

import com.bus.reservation.domain.model.BusReservationDetail;
import com.bus.reservation.domain.repository.BusReservationDetailRepository;
import com.bus.reservation.domain.repository.BusReservationRefundRepository;
import com.bus.reservation.domain.repository.MemberRepository;
import com.bus.reservation.domain.service.BusReservationDetailServiceImpl;
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
    private BusReservationDetailRepository busReservationDetailRepository;
    @Autowired
    private TravelService travelService;
    @Autowired
    private BusReservationDetailServiceImpl busReservationDetailService;
    @Autowired
    private MemberRepository memberRepository;


    @RequestMapping(value="/saveBusReservation")
    public String saveTravel(){
        return "admin_template";
    }



    @RequestMapping(value="/findReservList")
    public String findReservList(ModelMap model,
                                 @RequestParam Map<String, String> param){

        model.put("reservList", busReservationDetailService.findReservList(param));
        model.put("param", param);
        return "admin_reservList";
    }

    @RequestMapping(value="/updateReserv")
    public String updateReserv(ModelMap model,@RequestParam long reservSeq,
                               @RequestParam String status){

        busReservationDetailService.updateReserv(reservSeq, status);
        return "";
    }

    @RequestMapping(value="/cancelReservList")
    public String findCancelReservList(ModelMap model){
        model.put("refundList", busReservationRefundRepository.findAll());
        return "admin_cancelList";
    }

    @RequestMapping(value="/findUser")
    public String findUser(ModelMap model){
        model.put("userList",memberRepository.findAll());
        return "admin_userList";
    }

    @RequestMapping(value="/reservDetail")
    public String reservDetail(ModelMap model, @RequestParam Map<String, String> params){
        model.put("params", params);
        model.put("reservInfo", busReservationDetailRepository.findOne(Long.parseLong(params.get("reservSeq"))));
        return "admin_detail";
    }
}
