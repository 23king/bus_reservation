package com.bus.reservation.security;

import lombok.Getter;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;

import java.util.Collection;


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
    }

    public CustomUsernamePasswordAuthenticationToken(Object principal, Object credentials, Collection<? extends GrantedAuthority> authorities) {
        super(principal, credentials, authorities);
        UserDetail userDetail = (UserDetail) principal;
        this.userName = userDetail.getUser().getUserName();
        this.phone = userDetail.getUser().getUserPhone();
    }



}
