package com.coder.garibkabank.model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coder.garibkabank.dto.RegistionDto;

@Repository
public class RegistionDao {
	
	@Autowired
	private SessionFactory SessionFactory;
	
	public void register(RegistionDto registionDto) {
		Session session = SessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.save(registionDto);
			transaction.commit();
		} catch (Exception e) {
			System.err.println(e);
		}
		
	}
}
