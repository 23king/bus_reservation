package com.bus.reservation.domain.model;


import lombok.Data;
import lombok.ToString;
import org.springframework.context.annotation.Configuration;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name = "bus_reservation_detail")
@ToString(exclude = {"travel", "user", "refund"})
public class BusReservationDetail implements Serializable {

    @Id
    @GeneratedValue
    private long seq;

    private long bus_seat_no;
    private String reserv_status;
    private Date create_date;
    private Date update_date;

    @ManyToOne
    private Travel travel;

    @ManyToOne
    @JoinColumn(name="userSeq")
    private User user;

    @ManyToOne
    @JoinColumn(name="refundId")
    private BusReservationRefund refund;

}