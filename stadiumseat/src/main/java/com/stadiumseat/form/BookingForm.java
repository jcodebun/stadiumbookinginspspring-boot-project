package com.stadiumseat.form;


import javax.validation.constraints.NotEmpty;

import com.stadiumseat.dto.BaseDTO;
import com.stadiumseat.dto.BookingDTO;
import com.stadiumseat.utility.DataUtility;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookingForm extends BaseDTO {

	private String stadium_id;
	
	@NotEmpty(message = "Number Of Ticket is required")
	private String numberOfTicket;
	
	@NotEmpty(message = "Train Number is required")
	private String stadiumName;

	
	@NotEmpty(message = "First Name is required")
	private String firstName;
	
	@NotEmpty(message = "Last name is required")
	private String lastName;
	
	@NotEmpty(message = "Email is required")
	private String email;
	
	@NotEmpty(message = "Contact is required")
	private String contact;
	
	
	public BookingDTO getDTO() {
		BookingDTO bean=new BookingDTO();
		bean.setId(id);
		bean.setNumberOfTicket(DataUtility.getLong(numberOfTicket));
		bean.setStadiumName(stadiumName);

		bean.setFirstName(firstName);
		bean.setLastName(lastName);
		bean.setEmail(email);
		bean.setContact(contact);
		bean.setStadium_id(DataUtility.getLong(stadium_id));
		return bean;
	}

	public void populate(BookingDTO bean) {		
		id = bean.getId();		
		numberOfTicket=DataUtility.getStringData(bean.getNumberOfTicket());
		stadiumName = bean.getStadiumName();
		firstName = bean.getFirstName();
		lastName = bean.getLastName();
		email = bean.getEmail();
		contact = bean.getContact();
		stadium_id = DataUtility.getStringData(bean.getStadium_id());
	}



	
	
}
