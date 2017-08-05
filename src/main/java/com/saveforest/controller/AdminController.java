package com.saveforest.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.saveforest.model.Incident;
import com.saveforest.model.RolesEnum;
import com.saveforest.model.User;
import com.saveforest.model.UserRole;
import com.saveforest.service.IncidentService;
import com.saveforest.service.MailUtility;

@Controller
public class AdminController {

	@Autowired
	private  IncidentService incidentService;
	@Autowired
	private MailUtility mailUtility;
	
	@RequestMapping(value="/incidents", method=RequestMethod.GET)
	public String getIncidents(ModelMap model){
		try{
			mailUtility.sendMail("k.nidhan854@gmail.com", "k.nidhan854@gmail.com", "Test Data", "this is test mmail");	
		List<Incident> incident=incidentService.getAllIncidents();
		model.addAttribute("incidents", incident);
		}catch(Exception e){
			mailUtility.sendMail("k.nidhan854@gmail.com", "kulkarnisnehal17@gmail.com", "Test Data", "this is test mmail");
		 Incident incident=new Incident();
		 User user=new User();
		 user.setEmail("knidhan@hotmail.com");
		 user.setFullName("karuna nidhan");
		 user.setPhone("1234567890");
		 UserRole role=new UserRole();
		 role.setRoles(RolesEnum.ADMIN);
		 role.setUserRoleId(1);
		 user.setRole(role);
		 incident.setAssignedTo(user);
	    model.addAttribute("incidents",Arrays.asList(incident));
		}
		return "AdminConsole";
	}

	public void setIncidentService(IncidentService incidentService) {
		this.incidentService = incidentService;
	}
	
	
	
	
	
}
