package com.stadiumseat.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="stadium")
@Getter
@Setter
public class StadiumDTO extends BaseDTO {
	
	@Column(name = "stadiumName", length = 755)
	private String stadiumName;

	@Column(name = "numberOfSeat")
	private long numberOfSeat;
	
	@Column(name = "ticketPrice", length = 755)
	private long ticketPrice;
	
	

}
