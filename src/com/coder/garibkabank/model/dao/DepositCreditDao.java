package com.coder.garibkabank.model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coder.garibkabank.dto.TransactionsDto;

@Repository
public class DepositCreditDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void deposit(TransactionsDto transactionsDto) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.save(transactionsDto);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		
	}
}
