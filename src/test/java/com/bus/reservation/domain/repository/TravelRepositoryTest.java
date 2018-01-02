package com.bus.reservation.domain.repository;

import com.bus.reservation.domain.model.BusReservationDetail;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@RunWith(SpringRunner.class)
@SpringBootTest
@Transactional
public class TravelRepositoryTest {
    @Autowired
    private TravelRepository repository;

    @Test
    @Transactional
    public void findAllByReservations() throws Exception{
        List<BusReservationDetail> list  = new ArrayList<>();

        for (int i = 0; i < 4; i++) {
            BusReservationDetail detail = new BusReservationDetail();
            detail.setSeq(i);
            list.add(detail);
        }
//        log.info("reserv {}",repository.findAllByReservations(list));


    }
}
