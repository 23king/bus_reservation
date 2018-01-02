package com.bus.reservation.domain.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "travel")
public class Travel implements Serializable {

    @Id
    @GeneratedValue
    private long seq;
    private String destination;
    private long price;
    private String leader;
    private String notice1;
    private String notice2;
    private Date departureDate;
    private int busNum;

    @Transient
    private long reserv_cnt;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "travel")
    private List<BusReservation> buses;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "travel")
    private List<BusReservationDetail> reservations;
}
