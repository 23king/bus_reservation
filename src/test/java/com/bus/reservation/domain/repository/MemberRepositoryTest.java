package com.bus.reservation.domain.repository;

import com.bus.reservation.domain.model.User;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import static org.assertj.core.api.Assertions.assertThat;

@Slf4j
@RunWith(SpringRunner.class)
@SpringBootTest
@Transactional
public class MemberRepositoryTest {

    @Autowired
    MemberRepository memberRepository;

    @Test
    @Transactional
    public void testSave(){
        User user = new User();
        user.setUserId("ssamzie101");
        user.setUserName("이세왕");
        user.setUserPhone("111-111-1111");
        user = memberRepository.save(user);
        log.info(user.toString());

        assertThat(user).isNotNull();

        User new_user = memberRepository.findById(user.getId());
        log.info(new_user.toString());
    }

    @Test
    public void findByUserId(){
        String userId= "swlee";
        User user = memberRepository.findByUserId(userId);
//        log.info("user : {}",user);
//        log.info("user : {}",user.getUserRoles());
    }

    @Test
    public void findByUserIdAndUserNameAndUserPhone(){
        String userId="swlee";
        String userName="이세왕";
        String phone = "010-1111-1111";
        User user = memberRepository.findByUserIdAndUserNameAndUserPhone(userId, userName, phone);
        log.info("user {}",user);
    }


}