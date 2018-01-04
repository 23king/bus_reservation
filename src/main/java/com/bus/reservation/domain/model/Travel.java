package com.bus.reservation.domain.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "travel")
@ToString(exclude = {"buses", "reservations"})
public class Travel implements Serializable {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private long seq;
    private String destination;
    private long price;
    private String leader;
    private String notice1;
    private String notice2;
    private Date departureDate;
    private int busCount;

    @Transient
    private int reserv_cnt;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "travel", orphanRemoval=true)
    private List<BusReservation> buses;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "travel")
    private List<BusReservationDetail> reservations;


}
