package com.coder.garibkabank.model.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coder.garibkabank.dto.LoginDto;
import com.coder.garibkabank.dto.RegistionDto;

@Repository
public class LoginDao {
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public RegistionDto getUserIdAndPassword(LoginDto dto) {
		RegistionDto registionDto=null;
		Session session = sessionFactory.openSession();
		String hql = "from RegistionDto where custid=:newcustid and password=:newpassword"; 
		Query query = session.createQuery(hql);
		query.setParameter("newcustid", dto.getCustid());
		query.setParameter("newpassword", dto.getPassword());
		try {
			 registionDto = (RegistionDto) query.uniqueResult();
			 query.setCacheable(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return registionDto;
	}
}
