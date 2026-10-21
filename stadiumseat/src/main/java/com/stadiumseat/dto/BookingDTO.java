package com.stadiumseat.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="booking")
@Getter
@Setter
public class BookingDTO extends BaseDTO {

	@Column(name = "stadium_id")
	private long stadium_id;
	
	@Column(name = "user_id")
	private long user_id;
	
	@Column(name = "numberOfTicket")
	private long numberOfTicket;
	
	@Column(name = "stadiumName", length = 755)
	private String stadiumName;

	@Column(name = "firstName", length = 755)
	private String firstName;
	
	@Column(name = "lastName", length = 755)
	private String lastName;
	
	@Column(name = "email", length = 755)
	private String email;
	
	@Column(name = "contact", length = 755)
	private String contact;
	
	@Column(name = "totalPrice")
	private long totalPrice;
	
	@Column(name = "status", length = 755)
	private String status;
	
	
}
