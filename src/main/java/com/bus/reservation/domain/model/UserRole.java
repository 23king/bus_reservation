package com.bus.reservation.domain.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Data
public class UserRole implements Serializable {

    @Id
    @GeneratedValue
    private long seq;
    private String roleName;
    private String roleCode;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="createDate", insertable = false, columnDefinition="TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    private Date createDate;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name="id")
    private User user;

}
