package com.bus.reservation.domain.repository;

import com.bus.reservation.domain.model.BusReservation;
import com.bus.reservation.domain.model.BusReservationDetail;
import com.bus.reservation.domain.model.Travel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BusReservationRepository extends JpaRepository<BusReservation,Long> {
    BusReservation findAllByTravelAndBusNumAndSeatNum(Travel travel, int busNum, int setNum);


    List<BusReservation> findAllByBusReservationDetail(BusReservationDetail busReservationDetail);

    int countByTravelAndAndStatusEquals(Travel travel, int status);
    int countBySeqAndAndStatusEquals(long seq, int status);
}
