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

    private int busSeatNo;
    private String reservStatus;
    private Date createDate;
    private Date updateDate;

    @ManyToOne
    private Travel travel;

    @ManyToOne
    @JoinColumn(name="userSeq")
    private User user;

    @ManyToOne
    @JoinColumn(name="refundId")
    private BusReservationRefund refund;

}