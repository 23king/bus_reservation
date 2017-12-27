package com.bus.reservation.api;

import com.bus.reservation.domain.model.BusReservation;
import com.bus.reservation.domain.model.User;
import com.bus.reservation.domain.repository.BusReservationRepository;
import com.bus.reservation.domain.repository.BusTemplateRepository;
import com.bus.reservation.domain.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(path = "/client")
public class BusReservationController {
    @Autowired
    private BusTemplateRepository busTemplateRepository;
    @Autowired
    private BusReservationRepository busReservationRepository;
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

}
