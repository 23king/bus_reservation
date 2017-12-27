package com.bus.reservation.domain.repository;

import com.bus.reservation.domain.model.BusReservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BusReservationRepository extends JpaRepository<BusReservation,Long> {
}
