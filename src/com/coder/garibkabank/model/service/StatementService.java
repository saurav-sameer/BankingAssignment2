package com.coder.garibkabank.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coder.garibkabank.dto.RegistionDto;
import com.coder.garibkabank.model.dao.StatementDao;


@Service
public class StatementService {
	
	@Autowired
	private StatementDao statementDao;
	
	public List<RegistionDto> getStatement(RegistionDto registionDto) {
	    return   statementDao.getStatement(registionDto);
	}
}
