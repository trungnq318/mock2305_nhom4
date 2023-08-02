package com.vti.entity;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "passenger")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Passenger implements Serializable {

    private static final long serialVersionUID = 1L;

    @Column(name = "passenger_id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int passengerId;
    @Column(name = "booking_id")
    private int bookingId;
    @Column(name = "full_name")
    private String fullName;
    @Column(name = "gender")
    private Enum gender;
    @Column(name = "date_of_birth")
    private String dateOfBirth;
    @Column(name = "type")
    private Enum type;

}
