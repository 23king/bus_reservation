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
    @GeneratedValue
    private long id;
    @Id
    private long user_id;
    private String role_name;
    private String role_code;
    @DateTimeFormat
    private String create_date;

}
