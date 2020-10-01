package com.coder.garibkabank.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coder.garibkabank.model.dao.UpdateBlanceDao;

@Service
public class UpdateBlanceService {
	
	@Autowired
	private UpdateBlanceDao blUpdateBlanceDao;
	
	public void updateCridetBlance(Long accNo,Double blance)
	{
		blUpdateBlanceDao.updateBlance(accNo, blance);
	}
	
}
