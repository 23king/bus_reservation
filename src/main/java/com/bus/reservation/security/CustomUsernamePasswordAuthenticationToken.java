package com.bus.reservation.security;

import lombok.Getter;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;


public class CustomUsernamePasswordAuthenticationToken extends UsernamePasswordAuthenticationToken {
    private static final long serialVersionUID = 420L;
    @Getter
    private final Object userName;
    @Getter
    private final Object phone;

    public CustomUsernamePasswordAuthenticationToken(Object principal, Object principal2, Object principal3) {
        super(principal, principal2);
        this.userName = principal2;
        this.phone = principal3;
        this.setAuthenticated(false);
    }



}
