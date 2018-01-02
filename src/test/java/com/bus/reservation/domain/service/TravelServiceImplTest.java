package com.bus.reservation.domain.service;

import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import static org.junit.Assert.*;
import static org.assertj.core.api.Assertions.assertThat;

@Slf4j
@RunWith(SpringRunner.class)
@SpringBootTest
@Transactional
public class TravelServiceImplTest {

    @Autowired
    TravelService travelService;

    @Test
    public void saveTravel() throws Exception {
    }

    @Test
    public void reserveTravel() throws Exception {
    }

    @Test
    public void findTravelAll() throws Exception {
    }

    @Test
    public void checkSeat() throws Exception {
    }

    @Test
    public void findTravel() throws Exception {
        log.info("Travels : {}",travelService.findTravel(0));
        assertThat(travelService.findTravel(0));
    }

}