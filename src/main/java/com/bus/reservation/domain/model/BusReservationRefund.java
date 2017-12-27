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

    private long reserv_id;
    private Date refund_request_date;
    private Date refund_complete_date;
    private String refund_bank_name;
    private String refund_bank_account;
    private String refund_bank_no;
    private long refund_amount;
    private String refund_status;

}
