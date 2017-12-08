package com.bus.reservation.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping(path = "/test")
public class SampleController {

    @GetMapping(value = "/{message}")
    public List<String> test(@PathVariable String message){
        return Arrays.asList(message);
    }
}
