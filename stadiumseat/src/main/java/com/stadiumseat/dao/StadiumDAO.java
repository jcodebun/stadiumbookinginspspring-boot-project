package com.stadiumseat.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.stadiumseat.dto.StadiumDTO;


public interface StadiumDAO extends JpaRepository<StadiumDTO,Long > {

	
	public StadiumDTO findByStadiumName(String stadiumName);
	public StadiumDTO findById(long id);
}
