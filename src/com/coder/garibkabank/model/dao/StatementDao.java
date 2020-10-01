package com.coder.garibkabank.model.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coder.garibkabank.dto.RegistionDto;

@Repository
public class StatementDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<RegistionDto> getStatement(RegistionDto registionDto) {
		
		List<RegistionDto> list=null;
		Session session = sessionFactory.openSession();
		try {
			Query query = session.createQuery("from RegistionDto where accNumber=:newaccNumber");
			query.setParameter("newaccNumber", registionDto.getAccNumber());
			 list = query.list();
			 query.setCacheable(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
}
