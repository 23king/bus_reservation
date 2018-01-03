package com.bus.reservation.domain.model;


import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
@Table(name = "bus_reservation")
public class BusReservation implements Serializable {

    @Id
    @GeneratedValue
    private long seq;

    private int busNum;
    private int seatNum;
    private int status;
    private boolean isTwinSeat;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="travel_seq", nullable = false)
    private Travel travel;

}
