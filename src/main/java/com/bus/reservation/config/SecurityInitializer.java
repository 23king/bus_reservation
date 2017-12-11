package com.bus.reservation.config;

import org.springframework.core.annotation.Order;
import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;


/**
 * security filter 자동 등록
 */
@Order(1)
public class SecurityInitializer extends AbstractSecurityWebApplicationInitializer {
    
}
