package com.vti.entity;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "booking")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Booking implements Serializable {

	private static final long serialVersionUID = 1L;

	@Column(name = "booking_id")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bookingId;
	@Column(name = "tour_id")
	private int tourId;
	@Column(name = "full_name")
	private String fullName;
	@Column(name = "email")
	private String email;
	@Column(name = "phone")
	private String phone;
	@Column(name = "address")
	private String address;
	@Column(name = "note")
	private String note;
	@Column(name = "number_additional_room")
	private int numberAdditionalRoom;
	@Column(name = "create_at")
	private Date createAt;

}
