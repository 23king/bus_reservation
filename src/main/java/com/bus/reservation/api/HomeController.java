package com.bus.reservation.api;

import com.bus.reservation.domain.model.User;
import com.bus.reservation.domain.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@Controller
public class HomeController {

    @Autowired
    private MemberRepository memberRepository;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String main(ModelMap model){
        return "index";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(ModelMap model){
        return "list";
    }

    @RequestMapping(value = "/reservation", method = RequestMethod.GET)
    public String reservation(ModelMap model){
        return "reservation";
    }


//    @RequestMapping(value = "/reservationList", method = RequestMethod.GET)
//    public String reservationList(ModelMap model){
//        return "reservationList";
//    }

    @RequestMapping(value = "/reservationCancel", method = RequestMethod.GET)
    public String reservationCancel(ModelMap model){
        return "reservationCancel";
    }

    @RequestMapping(value = "/complete", method = RequestMethod.GET)
    public String complete(ModelMap model){
        return "complete";
    }


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap model){
        return "login";
    }

    @RequestMapping(value = "/findId", method = RequestMethod.GET)
    public String findId(ModelMap model){
        return "findId";
    }

    @RequestMapping(value = "/findByUserNameAndPhone", method = RequestMethod.POST)
    @ResponseBody
    public List<String> findByUserNameAndPhone(ModelMap model, @RequestParam String userName, @RequestParam String phoneNum){
        List<User> users = memberRepository.findAllByUserNameAndUserPhone(userName, phoneNum);
        List<String> ids = users.stream().map(user -> user.getUserId()).collect(Collectors.toList());
        return ids;
    }
//
//    @RequestMapping(value = "/admin/bus", method = RequestMethod.GET)
//    public String adminBus(ModelMap model){
//        return "admin_template";
//    }
//
//
//    @RequestMapping(value = "/admin/list", method = RequestMethod.GET)
//    public String adminList(ModelMap model){
//        return "admin_list";
//    }
//
//    @RequestMapping(value = "/admin/detail", method = RequestMethod.GET)
//    public String adminDetail(ModelMap model){
//        return "admin_detail";
//    }
//
//    @RequestMapping(value = "/admin/modify", method = RequestMethod.GET)
//    public String adminModify(ModelMap model){
//        return "admin_modify";
//    }

}
