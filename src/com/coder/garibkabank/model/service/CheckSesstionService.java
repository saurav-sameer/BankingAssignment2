package com.coder.garibkabank.model.service;

import org.springframework.stereotype.Service;

import com.coder.garibkabank.dto.RegistionDto;

@Service
public class CheckSesstionService {
	public boolean checlSesstion(RegistionDto registionDto) {
		if(registionDto==null) {
			return false;
		}
		return true;
	}
}
