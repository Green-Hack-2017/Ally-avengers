package com.saveforest.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.saveforest.model.Incident;


@Component
public class IncidentDao {
	
	@Autowired
	 private SessionFactory sessionFactory;
	 
	    public void setSessionFactory(SessionFactory sessionFactory) {
	        this.sessionFactory = sessionFactory;
	    }
	     
	    public Incident save(Incident incident) {
	        Session session = sessionFactory.openSession();
	        Transaction tx = session.beginTransaction();
	        session.save(incident);
	        System.out.println("incident details are as follows"+incident);
	        tx.commit();
	        session.close();
	        return incident;
	    }
	 
	    @SuppressWarnings("unchecked")
	    public List<Incident> getIncidents() {
	        Session session = this.sessionFactory.openSession();
	        List<Incident> personList = session.createQuery("from Incident").list();
	        session.close();
	        return personList;
	    }
	 
	    @SuppressWarnings("unchecked")
	    public Incident incidentDetails(int incidentId) {
	        Session session = this.sessionFactory.openSession();
	        Query query = session.createQuery("from Incident inc where inc.incidentId=:arg1 ");
	        query.setParameter("arg1", incidentId);
	        List<Incident> incident=query.list();
	        session.close();
	        return incident.get(0);
	    }
	    
	
	
}
