package com.bus.reservation.domain.repository;

import com.bus.reservation.domain.model.BusTemplate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BusTemplateRepository extends JpaRepository<BusTemplate, Long> {

}
