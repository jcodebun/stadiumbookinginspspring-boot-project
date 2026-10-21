package com.stadiumseat.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.stadiumseat.dto.BookingDTO;

public interface BookingDAO  extends JpaRepository<BookingDTO, Long>{

	public BookingDTO findById(long id); 
	public List<BookingDTO> findByEmail(String email);
}
