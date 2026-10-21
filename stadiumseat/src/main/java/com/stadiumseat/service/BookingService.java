package com.stadiumseat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stadiumseat.dao.BookingDAO;
import com.stadiumseat.dao.StadiumDAO;
import com.stadiumseat.dto.BookingDTO;
import com.stadiumseat.dto.PaymentDTO;
import com.stadiumseat.dto.StadiumDTO;
import com.stadiumseat.exception.RecordNotFoundException;

@Service
public class BookingService {

	@Autowired
	public BookingDAO dao;
	
	public BookingDTO Add(BookingDTO dto) {
		BookingDTO train = null;
          dto.setStatus("Cancel");
		 train = dao.save(dto);
	       return  train;
		}
		
		
		public BookingDTO findBookingById(long id) {
			return dao.findById(id);
		}
		
	
		
		public List<BookingDTO> list(){
			List<BookingDTO> dto = dao.findAll();
			return dto;
		}
		
		public List<BookingDTO> list(String email){
			List<BookingDTO> dto = dao.findByEmail(email);
			return dto;
		}
		
		public BookingDTO update(BookingDTO dto){
			BookingDTO bean = dao.saveAndFlush(dto);
			return bean;
		}
		
		public void delete(long id) throws Exception {
			if(id>0)
			{
				dao.deleteById(id);
			}else {
				throw new Exception("Not a valid id");
			}
			
		}

		

}
