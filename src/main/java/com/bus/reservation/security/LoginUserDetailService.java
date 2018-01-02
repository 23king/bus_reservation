package com.bus.reservation.security;

import com.bus.reservation.domain.model.User;
import com.bus.reservation.domain.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

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

    public UserDetail loadUserByUserInfo(String userId, String userName, String phone){
        User user = memberRepository.findByUserIdAndUserNameAndUserPhone(userId, userName, phone);

        if(user == null){
            // TODO: 사용자 정보가 없으면 join 시켜 버린다
//            User newUser = new User();
//            newUser.setUserId(userId);
//            newUser.setUserName(userName);
//            newUser.setUserPhone(phone);
//            user = memberRepository.save(newUser);
        }

        UserDetail userDetail = new UserDetail(user);
        return userDetail;
    }
}
