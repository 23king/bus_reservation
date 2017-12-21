package com.bus.reservation.domain.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;

@Data
@Entity
@Table(name = "bus_template")
public class BusTemplate implements Serializable {

    @Id
    @GeneratedValue
    private long id;

    private String bus_name;
    private long bus_seat_cnt;
    private Date create_date;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "bus_id")
    private Collection<BusReservation> busReservation;
}
