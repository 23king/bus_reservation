package com.bus.reservation.domain.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name = "bus_reservation_refund")
public class BusReservationRefund implements Serializable {

    @Id
    @GeneratedValue
    private long seq;

    private long travelSeq;
    private Date refundRequestDate;
    private Date refundCompleteDate;
    private String refundBankName;
    private String refundBankAccount;
    private String refundBankNo;
    private long refundAmount;
    private String refundStatus;

    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "group_id", referencedColumnName="travel_seq")
    private BusReservationDetail reservationDetail;
}
