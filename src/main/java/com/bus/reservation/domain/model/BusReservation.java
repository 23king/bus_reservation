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

//    private long travelSeq;

    private long busNum;
    private long seatNum;
    private long status;
    private boolean isTwinSeat;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="travel_seq")
    private Travel travel;

}
