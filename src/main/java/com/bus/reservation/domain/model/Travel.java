package com.bus.reservation.domain.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;

@Data
@Entity
@Table(name = "travel")
public class Travel implements Serializable {

    @Id
    @GeneratedValue
    private long seq;
    private String destination;
    private long price;
    private String notice;
    private Date departureDate;

    @Transient
    private long reserv_cnt;


    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "travelSeq")
    private Collection<BusReservation> buses;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "travelSeq")
    private Collection<BusReservationDetail> reservations;
}
