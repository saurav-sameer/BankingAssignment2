package com.coder.garibkabank.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coder.garibkabank.dto.RegistionDto;
import com.coder.garibkabank.model.dao.RegistionDao;


@Service
public class RegistionService {
	
	@Autowired
	private RegistionDao registionDao;
	
	public void registionService(RegistionDto registionDto) {
		registionDao.register(registionDto);
	}
	
}
