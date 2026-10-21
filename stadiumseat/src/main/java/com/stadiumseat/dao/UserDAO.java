package com.stadiumseat.dao;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.stadiumseat.dto.UserDTO;

public interface UserDAO extends JpaRepository<UserDTO, Long> {
	
	public UserDTO findByEmailAndPassword(String email, String password);
	public UserDTO findByEmail(String email);
	public List<UserDTO> findByFirstName(String fname);
	public UserDTO findById(long id);

}
