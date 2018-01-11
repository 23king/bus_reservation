package com.bus.reservation.exception;

public class ReservationException extends RuntimeException{
    private String message;

    public ReservationException(String message){
        this.message = message;
    }

    @Override
    public String getMessage(){
        return message;
    }

}
