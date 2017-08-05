package com.saveforest.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.saveforest.model.Customer;
import com.saveforest.model.Incident;
import com.saveforest.model.StatusEnum;
import com.saveforest.model.User;
import com.saveforest.service.IncidentService;
import com.saveforest.service.MailUtility;

@Controller
public class IncidentController {
	
	@Autowired
	private IncidentService incidentService;
	
	@Autowired
	private MailUtility mailUtility;

	public IncidentService getIncidentService() {
		return incidentService;
	}

	public void setIncidentService(IncidentService incidentService) {
		this.incidentService = incidentService;
	}

	@RequestMapping(value = "/incident", method = RequestMethod.POST)
	public String submit(@RequestParam("fn") String firstName,
			@RequestParam("ln") String lastName,
			@RequestParam("email") String email,
			@RequestParam("phone") String phone,
			@RequestParam("description") String description,
			@RequestParam("lat") String lat, @RequestParam("lng") String lng,
			@RequestParam("address2") String address, ModelMap model) {
		Incident incident = new Incident();
		incident.setAddress(address);
		incident.setStatus(StatusEnum.New);
		if(firstName.equalsIgnoreCase("emergency")){
		incident.setStatus(StatusEnum.Critical);
		}
		incident.setLat(lat);
		incident.setLng(lng);
		User user = new User();
		user.setEmail(email);
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setPhone(phone);
		incident.setDetectedBy(user);
		User user1 = new User();
		user1.setEmail("knidhan@hotmail.com");
		incident.setAssignedTo(user1);
		incident=incidentService.saveIncident(incident);
		mailUtility.sendMail("k.nidhan854@gmail.com", incident.getDetectedBy().getEmail(),"incident Details : incident Number  "+incident.getIncidentId(), "your incident details has been recorded successfully, we will try to resolve it as soon as possible");
		mailUtility.sendMail("k.nidhan854@gmail.com", incident.getAssignedTo().getEmail(),"incident Details : incident Number  "+incident.getIncidentId(), "your incident details has been recorded successfully, we will try to resolve it as soon as possible");
		model.addAttribute("firstName", firstName);
		model.addAttribute("lastName", lastName);
		model.addAttribute("incidentId", incident.getIncidentId());
		System.out.println(model.values());
		return "incident";

	}

	/*
	 * @RequestMapping(value="/login", method=RequestMethod.POST) public String
	 * postLogin(@RequestParam("customerFname") String
	 * customerFname,@RequestParam("customerLname") String customerLname,
	 * 
	 * @RequestParam("id") int id, ModelMap model){
	 * model.addAttribute("customerFname", customerFname);
	 * model.addAttribute("customerLname", customerLname);
	 * model.addAttribute("id", id); return "postLogin";
	 * 
	 * }
	 */

	/*
	 * @RequestMapping(value="/login", method=RequestMethod.POST) public String
	 * postLogin(@RequestParam Map<String,String> formData, ModelMap model){
	 * String customerFname=(String)formData.get("customerFname"); String
	 * customerLname=(String)formData.get("customerLname"); int
	 * id=Integer.valueOf((String) formData.get("id"));
	 * 
	 * model.addAttribute("customerFname", customerFname);
	 * model.addAttribute("customerLname", customerLname);
	 * model.addAttribute("id", id); return "postLogin";
	 * 
	 * }
	 */

	@RequestMapping(value = "/login/{userName}", method = RequestMethod.GET)
	public String loginDetails(@PathVariable("userName") String name,
			ModelMap model) {
		model.addAttribute("fname", name);
		model.addAttribute("lname", "nidhan");
		return "logingForm";

	}

	/*
	 * @RequestMapping(value="/login", method=RequestMethod.POST) public String
	 * postLogin(@RequestParam Map<String,String> formData, ModelMap model){
	 * String customerFname=(String)formData.get("customerFname"); String
	 * customerLname=(String)formData.get("customerLname"); int
	 * id=Integer.valueOf((String) formData.get("id")); Customer customer=new
	 * Customer(); customer.setCustomerFname(customerFname);
	 * customer.setCustomerLname(customerLname); customer.setId(id);
	 * 
	 * model.addAttribute("customerFname", customerFname);
	 * model.addAttribute("customerLname", customerLname);
	 * model.addAttribute("id", id); model.addAttribute("customerData",
	 * customer);
	 * 
	 * return "postLogin";
	 * 
	 * }
	 */

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String postLogin(@ModelAttribute Customer customer,
			BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			return "logingForm";
		}
		model.addAttribute("customerData", customer);
		return "postLogin";

	}

	@ModelAttribute
	public void addModel(Model model) {
		model.addAttribute("message", "welcome to Online Banking");
	}

}
