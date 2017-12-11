package com.bus.reservation.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @GetMapping(value = "/")
    public String main(){
        return "Hello World!!";
    }
}
