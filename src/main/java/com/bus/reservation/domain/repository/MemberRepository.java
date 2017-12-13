package com.bus.reservation.domain.repository;

import com.bus.reservation.domain.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberRepository extends JpaRepository<User, Long> {

    User save(User user);

    User findById(Long id);

    User findByUserId(String userId);

    User findByUserIdAndUserNameAndUserPhone(String userId, String userName, String phone);
}
