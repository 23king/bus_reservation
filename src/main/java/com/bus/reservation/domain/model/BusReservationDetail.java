package com.bus.reservation.domain.model;


import lombok.Data;
import org.springframework.context.annotation.Configuration;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name = "bus_reservation_detail")
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
    private User user;

}