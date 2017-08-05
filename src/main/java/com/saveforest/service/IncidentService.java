package com.saveforest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saveforest.dao.IncidentDao;
import com.saveforest.model.Incident;


@Service
public class IncidentService {

	@Autowired
	private IncidentDao incidentDao;
	
	public List<Incident> getAllIncidents() {
		return incidentDao.getIncidents();
		
	}

	public Incident saveIncident(Incident incident) {
		return incidentDao.save(incident);
	}
	
	public IncidentService() {
		super();
		// TODO Auto-generated constructor stub
	}






}
