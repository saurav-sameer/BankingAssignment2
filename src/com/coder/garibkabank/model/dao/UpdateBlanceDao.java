package com.coder.garibkabank.model.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UpdateBlanceDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void updateBlance(Long accNo,Double blance) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql="update from RegistionDto set balance=:newbalance where accNumber=:accNumber";
		Query query = session.createQuery(hql);
		query.setParameter("newbalance", blance);
		query.setParameter("accNumber", accNo);
		try {
			 query.executeUpdate();
			 transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
	}
}
