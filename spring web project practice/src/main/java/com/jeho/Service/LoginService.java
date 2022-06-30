package com.jeho.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeho.DAO.LoginDAO;
import com.jeho.DTO.LoginDTO;

@Service
public class LoginService {
	
	@Autowired
	private LoginDAO loginDAO;
	
	public int join(LoginDTO loginDTO) {
		
		return loginDAO.join(loginDTO);
			
	}

	public int login(LoginDTO loginDTO) {
		
		return loginDAO.login(loginDTO);
	}

}
