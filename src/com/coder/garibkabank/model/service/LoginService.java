package com.coder.garibkabank.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coder.garibkabank.dto.LoginDto;
import com.coder.garibkabank.dto.RegistionDto;
import com.coder.garibkabank.model.dao.LoginDao;

@Service
public class LoginService {
	
	@Autowired
	private LoginDao loginDao;
	
	public  RegistionDto getUserIdAndPassword(LoginDto loginDto) {
		return loginDao.getUserIdAndPassword(loginDto);
	}
}
