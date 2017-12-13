package com.bus.reservation.domain.model;


import lombok.Data;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;

@Data
@Entity
@Table(name = "bus_reservation")
public class BusReservation {

    @Id
    @GeneratedValue
    private long seq;

    private String title;

    private long bus_id;
    private Date departure_date;
    private String area;
    private String destination;
    private String notice;
    private long price;
    private long reserved_cnt;  //넣을까 말까 고민중 의견 부탁
    private String use_yn;
    private Date create_date;
    private Date update_date;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "reserv_id")
    private Collection<BusReservationDetail> reservationDetail;

}
