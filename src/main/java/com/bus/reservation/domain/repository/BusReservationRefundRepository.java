package com.bus.reservation.domain.repository;

import com.bus.reservation.domain.model.BusReservation;
import com.bus.reservation.domain.model.BusReservationRefund;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BusReservationRefundRepository extends JpaRepository<BusReservationRefund,Long>{

}
