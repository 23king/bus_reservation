package com.bus.reservation.domain.repository;

import com.bus.reservation.domain.model.BusReservationDetail;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BusReservationDetailRepository extends JpaRepository<BusReservationDetail,Long> {

    List<BusReservationDetail> findAllByTravelSeq(long travelSeq);

    Long countByTravelSeq(long travelSeq);
}
