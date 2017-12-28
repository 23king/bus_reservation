package com.bus.reservation.domain.model;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;

@Entity
@Data
public class UserRole implements Serializable {

    @Id
    private long userId;
    private String roleName;
    private String roleCode;
    @DateTimeFormat
    private String createDate;

}
