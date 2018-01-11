package com.bus.reservation.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.OK)
public class ReservationException extends RuntimeException{
    private String message;

    public ReservationException(){

    }

    public ReservationException(String message){
        super(message);

        this.message = message;
    }


    public String getMessage(){
        return message;
    }

}
