package com.bus.reservation.domain.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "bus_reservation_refund")
@ToString(exclude = {"reservationDetail"})
public class BusReservationRefund implements Serializable {

    @Id
    @GeneratedValue
    private long seq;

//    private long travelSeq;
    private Date refundRequestDate;
    private Date refundCompleteDate;
    private String refundBankName;
    private String refundBankAccount;
    private String refundBankNo;
    private long refundAmount;
    private String refundStatus;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "refund")
    private List<BusReservationDetail> reservationDetail;

    @ManyToOne
    @JoinColumn(name="travelSeq")
    private Travel travel;
}
