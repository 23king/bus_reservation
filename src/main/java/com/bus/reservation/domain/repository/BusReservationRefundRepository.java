package com.bus.reservation.domain.repository;

import com.bus.reservation.domain.model.BusReservation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BusReservationRefundRepository extends JpaRepository<BusReservation,Long>{

}
