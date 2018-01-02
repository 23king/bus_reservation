package com.bus.reservation.domain.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Entity
@Data
@ToString(exclude = {"userRoles", "busReservationDetail"})
public class User implements Serializable {

    @Id
    @GeneratedValue
    private long id;
    private String userId;
    private String userName;
    private String userPhone;

    @Column(name = "useYn", insertable = false, columnDefinition = "VARCHAR(1) DEFAULT 'Y'")
    private String useYn;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="createDate", insertable = false, columnDefinition="TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    private Date createDate;

    @Column(name="updateDate", updatable = false, columnDefinition="TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    @Temporal(TemporalType.TIMESTAMP)
    private Date updateDate;

    @Column(name="lastLoginDate", updatable = false, insertable = false, columnDefinition="TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastLoginDate;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "user")
    private List<UserRole> userRoles;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "user")
    private List<BusReservationDetail> busReservationDetail;


}
