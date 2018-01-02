package com.bus.reservation.domain.repository;

import com.bus.reservation.domain.model.BusReservationDetail;
import com.bus.reservation.domain.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BusReservationDetailRepository extends JpaRepository<BusReservationDetail,Long> {

    List<BusReservationDetail> findAllByTravelSeq(long travelSeq);

    List<BusReservationDetail> findAllByUser(User user);

    Long countByTravelSeq(long travelSeq);
}
