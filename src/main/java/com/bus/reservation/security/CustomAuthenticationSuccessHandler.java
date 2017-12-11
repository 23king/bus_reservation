package com.bus.reservation.security;

import com.bus.reservation.domain.model.User;
import com.bus.reservation.domain.repository.MemberRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;
import java.io.IOException;
import java.util.Date;

@Slf4j
@Component
public class CustomAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler{

    @Autowired
    private MemberRepository memberRepository;

    @Override
    @Transactional
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        response.setStatus(HttpServletResponse.SC_OK);
        this.clearAuthenticationAttributes(request);

        if (authentication.getPrincipal() instanceof User) {
            User user = (User) authentication.getPrincipal();
            User logined_user = memberRepository.findById(user.getId());
            if (!StringUtils.isEmpty(logined_user.getUserId())) {
                user.setLastLoginDate(new Date());
                memberRepository.save(logined_user);
            }
        }
    }
}
