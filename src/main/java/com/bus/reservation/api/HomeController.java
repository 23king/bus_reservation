package com.bus.reservation.api;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String main(ModelMap model){
        model.put("message","Hello Sansu!!");
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

    @RequestMapping(value = "/reservationList", method = RequestMethod.GET)
    public String reservationList(ModelMap model){
        return "reservationList";
    }

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

    @RequestMapping(value = "/admin/bus", method = RequestMethod.GET)
    public String adminBus(ModelMap model){
        return "admin_template";
    }


    @RequestMapping(value = "/admin/list", method = RequestMethod.GET)
    public String adminList(ModelMap model){
        return "admin_list";
    }

    @RequestMapping(value = "/admin/detail", method = RequestMethod.GET)
    public String adminDetail(ModelMap model){
        return "admin_detail";
    }

    @RequestMapping(value = "/admin/modify", method = RequestMethod.GET)
    public String adminModify(ModelMap model){
        return "admin_modify";
    }

}
