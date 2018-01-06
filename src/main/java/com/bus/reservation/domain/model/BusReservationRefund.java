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
@ToString(exclude = {"reservationDetail" ,"travel"})
public class BusReservationRefund implements Serializable {

    @Id
    @GeneratedValue
    private long seq;

    private Date refundRequestDate;
    private Date refundCompleteDate;
    private String refundBankName;
    private String refundBankAccount;
    private String refundBankNo;
    private long refundAmount;
    /**
     * 1 : 환불신청
     * 2 : 환불 진행중
     * 3 : 환불 완료
     */
    private String refundStatus;

    @OneToOne(fetch = FetchType.LAZY)
    private BusReservationDetail reservationDetail;

    @ManyToOne
    @JoinColumn(name="travelSeq")
    private Travel travel;
}
