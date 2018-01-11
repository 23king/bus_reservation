package com.bus.reservation.api;

import com.bus.reservation.exception.ReservationException;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class ExceptionHandlerController {

    @ExceptionHandler(value={
            ReservationException.class
    })
    @ResponseStatus(HttpStatus.OK)
    public String handleError(ModelMap model, @RequestParam Map<String, String> param, HttpServletRequest req, Exception ex){
        model.put("message", ex.getMessage());
        model.put("param", param);
        model.put("targetUrl", req.getHeader("Referer"));
        return "errorHandler";
    }
}
