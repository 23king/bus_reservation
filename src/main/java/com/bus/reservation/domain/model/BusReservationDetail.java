package com.bus.reservation.domain.model;


import lombok.Data;

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

    private long reserv_id;
    private long reserv_group_id;
    private String user_id;
    private long bus_seat_no;
    private String reserv_status;
    private Date create_date;
    private Date update_date;

    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "group_id", referencedColumnName="reserv_id")
    private BusReservationRefund refundData;

}
