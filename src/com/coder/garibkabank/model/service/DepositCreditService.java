package com.coder.garibkabank.model.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coder.garibkabank.dto.TransactionsDto;
import com.coder.garibkabank.model.dao.DepositCreditDao;



@Service
public class DepositCreditService {
	
	@Autowired
	private DepositCreditDao depositCreditDao;
	
	public void deposit(TransactionsDto transactionsDto) {
		transactionsDto.setDate(new Date());
		depositCreditDao.deposit(transactionsDto);
	}
	
	
}
