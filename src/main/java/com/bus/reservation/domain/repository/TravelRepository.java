package com.bus.reservation.domain.repository;

import com.bus.reservation.domain.model.BusReservationDetail;
import com.bus.reservation.domain.model.Travel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface TravelRepository extends JpaRepository<Travel,Long> {

    List<Travel> findAllByReservations(List<BusReservationDetail> reservList);
}
