package com.bus.reservation.domain.model;


import lombok.Data;
import lombok.Setter;
import lombok.ToString;
import org.springframework.context.annotation.Configuration;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "bus_reservation_detail")
@ToString(exclude = {"travel", "user", "refund"})
public class BusReservationDetail implements Serializable {

    @Id
    @GeneratedValue
    private long seq;

    private int busSeatCnt;
    /**
     * status
     *  0 : 예약대기 (입금대기)
     *  1 : 예약완료 (입금완료)
     *  2 : 취소요청
     *  4 : 최소완료
     */
    private String reservStatus;
    private Date createDate;
    private Date updateDate;
    private String bankAccountName;

    @Transient
    private Travel travelInfo;

    @Transient
    private String seatNum;

    @ManyToOne
    private Travel travel;

    @ManyToOne
    @JoinColumn(name="userSeq")
    private User user;

    @OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "reservationDetail")
    @JoinColumn(name="reservDetailId")
    private BusReservationRefund refund;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "busReservationDetail", orphanRemoval=true)
    private List<BusReservation> busReservationList;

}