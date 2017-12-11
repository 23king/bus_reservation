package com.bus.reservation.security;

import com.bus.reservation.domain.model.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.AbstractUserDetailsAuthenticationProvider;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class CustomAuthenticationProvider extends AbstractUserDetailsAuthenticationProvider {

    @Autowired
    private LoginUserDetailService loginUserDetailService;

    @Override
    protected void additionalAuthenticationChecks(UserDetails userDetails, UsernamePasswordAuthenticationToken authenticate) throws AuthenticationException {
        if(authenticate.getCredentials() == null){
            throw new BadCredentialsException(messages.getMessage(
                    "AbstractUserDetailsAuthenticationProvider.badCredentials", "Bad credentials"));
        }

        UserDetail user = (UserDetail) userDetails;
        User userData = user.getUser();



    }



    @Override
    protected UserDetails retrieveUser(String userId, UsernamePasswordAuthenticationToken authentication) throws AuthenticationException {
        UserDetail userDetail = null;
        CustomUsernamePasswordAuthenticationToken token = (CustomUsernamePasswordAuthenticationToken) authentication;
        if (token.getCredentials() == null) {
            log.debug("Authentication failed: no credentials provided");

            throw new BadCredentialsException(messages.getMessage(
                    "AbstractUserDetailsAuthenticationProvider.badCredentials", "Bad credentials"));
        }
        
        try{
            String userNm = String.valueOf(token.getUserName());
            String phone = String.valueOf(token.getPhone());

            userDetail = loginUserDetailService.loadUserByUserInfo(userId, userNm, phone );

        }catch(UsernameNotFoundException ex){
            log.debug("create user");
        }
        
        if(userDetail == null) {
            throw new AuthenticationServiceException("UserDetailsService returned null, which is an interface contract violation");
        }
        return userDetail;
    }
}
