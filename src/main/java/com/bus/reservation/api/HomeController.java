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


    @RequestMapping(value = "/reservation", method = RequestMethod.GET)
    public String reservation(ModelMap model){
//        model.put("message","Hello Sansu!!");
        return "reservation";
    }

    @RequestMapping(value = "/temp", method = RequestMethod.GET)
    public String temp(ModelMap model){
//        model.put("message","Hello Sansu!!");
        return "admin_template";
    }

}
