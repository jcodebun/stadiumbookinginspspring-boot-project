package com.stadiumseat.form;

import javax.validation.constraints.NotEmpty;

import com.stadiumseat.dto.BaseDTO;
import com.stadiumseat.dto.StadiumDTO;
import com.stadiumseat.dto.UserDTO;
import com.stadiumseat.utility.DataUtility;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class StadiumForm extends BaseDTO {

	@NotEmpty(message = "Stadium Name is required")
	private String stadiumName;

	@NotEmpty(message = "Number Of Seat is required")
	private String numberOfSeat;
	
	@NotEmpty(message = "Ticket Price is required")
	private String ticketPrice;
	
	
	public StadiumDTO getDTO() {
		StadiumDTO bean=new StadiumDTO();
		
		bean.setId(id);
		bean.setStadiumName(stadiumName);
		bean.setNumberOfSeat(DataUtility.getLong(numberOfSeat));
		bean.setTicketPrice(DataUtility.getLong(ticketPrice));
		

		return bean;
	}

	public void populate(StadiumDTO bean) {
		id = bean.getId();
		stadiumName = bean.getStadiumName();
		numberOfSeat = DataUtility.getStringData(bean.getNumberOfSeat());
		ticketPrice = DataUtility.getStringData(bean.getTicketPrice());

	}
	
}
