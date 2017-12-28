package com.bus.reservation.domain.repository;

import com.bus.reservation.domain.model.Travel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TravelRepository extends JpaRepository<Travel,Long> {
}
