package com.bus.reservation.domain.repository;

import com.bus.reservation.domain.model.BusReservationDetail;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BusReservationDetailRepository extends JpaRepository<BusReservationDetail,Long> {
}
