package com.bus.reservation.domain.repository;

import com.bus.reservation.domain.model.BusReservationDetail;
import com.bus.reservation.domain.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BusReservationDetailRepository extends JpaRepository<BusReservationDetail,Long> {

    BusReservationDetail findAllByTravelSeq(long travelSeq);

    List<BusReservationDetail> findAllByUser(User user);

    Long countByTravelSeq(long travelSeq);

}
