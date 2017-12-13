package com.bus.reservation.domain.model;


import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Entity
@Table(name = "bus_reservation_detail")
public class BusReservationDetail {

    @Id
    @GeneratedValue
    private long seq;

    private long reserv_id;
    private long reserv_group_id;
    private String user_id;
    private long bus_seat_no;
    private String reserv_yn;
    private Date create_date;
    private Date update_date;

}
