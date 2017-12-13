package com.bus.reservation.domain.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Data
@ToString
public class User implements Serializable {

    @Id
    @GeneratedValue
    private long id;
    private String userId;
    private String userName;
    private String userPhone;

    @Column(name = "use_yn", insertable = false, columnDefinition = "VARCHAR(1) DEFAULT 'Y'")
    private String useYn;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="create_date", insertable = false, columnDefinition="TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    private Date createDate;

    @Column(name="update_date", updatable = false, columnDefinition="TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    @Temporal(TemporalType.TIMESTAMP)
    private Date updateDate;

    @Column(name="last_login_date", updatable = false, insertable = false, columnDefinition="TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastLoginDate;

}
