package com.bus.reservation.api;

import com.bus.reservation.exception.ReservationException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@ControllerAdvice
public class ExceptionHandlerController {

    @ExceptionHandler(ReservationException.class)
    public ModelAndView handleError(HttpServletRequest req, Exception ex){
        ModelAndView mav = new ModelAndView("errorHandler");
        mav.addObject("message", ex.getMessage());
        mav.addObject("targetUrl", req.getHeader("referer"));
        return mav;
    }

     @ExceptionHandler(BadCredentialsException.class)
     public ModelAndView loginError(HttpServletRequest req, Exception ex){
         ModelAndView mav = new ModelAndView("loginFail");
         return mav;
     }
}
