package com.bus.reservation.security;

import com.bus.reservation.domain.model.User;
import com.bus.reservation.domain.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class LoginUserDetailService implements UserDetailsService {
    @Autowired
    private MemberRepository memberRepository;

    @Override
    public UserDetail loadUserByUsername(String userId) throws UsernameNotFoundException {
        User user = memberRepository.findByUserId(userId);

        if(user == null){
            throw new UsernameNotFoundException("user is not found");
        }

        UserDetail userDetail = new UserDetail(user);
        return userDetail;
    }

    public UserDetail loadUserByUserInfo(String userId, String userName, String phone) throws UsernameNotFoundException{
        User user = memberRepository.findByUserIdAndUserNameAndUserPhone(userId, userName, phone);

        if(user == null){
            throw new UsernameNotFoundException(userName);
        }

        UserDetail userDetail = new UserDetail(user);
        return userDetail;
    }
}
