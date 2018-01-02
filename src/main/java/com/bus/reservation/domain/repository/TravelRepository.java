package com.bus.reservation.domain.repository;

import com.bus.reservation.domain.model.BusReservationDetail;
import com.bus.reservation.domain.model.Travel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TravelRepository extends JpaRepository<Travel,Long> {

    List<Travel> findAllByReservations(List<BusReservationDetail> reservList);
}
