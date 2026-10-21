package com.stadiumseat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stadiumseat.dao.StadiumDAO;
import com.stadiumseat.dto.StadiumDTO;
import com.stadiumseat.exception.RecordNotFoundException;



@Service
public class StadiumService {

	@Autowired
	public StadiumDAO dao;
	
	public StadiumDTO Add(StadiumDTO dto) {
		StadiumDTO stadium = null;
		stadium = dao.findByStadiumName(dto.getStadiumName());
		System.out.println("Stadium Name ........: "+stadium);
		if(stadium != null)
			throw new RecordNotFoundException("stadium is already exists..");
		    System.out.println("dto Before Save: "+dto);
		    stadium = dao.save(dto);
	       return  stadium;
		}
		
		
		public StadiumDTO findStadiumById(long id) {
			return dao.findById(id);
		}
		
	
		
		public List<StadiumDTO> list(){
			List<StadiumDTO> dto = dao.findAll();
			return dto;
		}
		
		public StadiumDTO update(StadiumDTO dto){
			StadiumDTO bean = dao.saveAndFlush(dto);
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
