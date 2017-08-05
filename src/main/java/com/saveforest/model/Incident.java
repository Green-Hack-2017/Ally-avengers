package com.saveforest.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;


@Entity 
public class Incident {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int incidentId;
	
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "incident", cascade = CascadeType.ALL)
	private Category category;
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "incident", cascade = CascadeType.ALL)
		private User detectedBy;
	
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "incident", cascade = CascadeType.ALL)
	private User assignedTo;
	private Date created=new Date();
	  private Date updated=new Date();
	
	  @PreUpdate
	  public void setLastUpdate() {  this.updated = new Date(); }
	  
	  
	  
	public Date getCreated() {
		return created;
	}


	private StatusEnum status;
	
	private String lat;
	
	private String lng;
	
	public int getIncidentId() {
		return incidentId;
	}

	public void setIncidentId(int incidentId) {
		this.incidentId = incidentId;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public User getDetectedBy() {
		return detectedBy;
	}

	public void setDetectedBy(User detectedBy) {
		this.detectedBy = detectedBy;
	}

	public User getAssignedTo() {
		return assignedTo;
	}

	public void setAssignedTo(User assignedTo) {
		this.assignedTo = assignedTo;
	}

	public Date getUpdated() {
		return updated;
	}

	public void setUpdated(Date updated) {
		this.updated = updated;
	}

	public StatusEnum getStatus() {
		return status;
	}

	public void setStatus(StatusEnum status) {
		this.status = status;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


	private String address;

	@Override
	public String toString() {
		return "Incident [incidentId=" + incidentId + ", category=" + category
				+ ", detectedBy=" + detectedBy + ", assignedTo=" + assignedTo
				+ ", created=" + created + ", updated=" + updated + ", status="
				+ status + ", lat=" + lat + ", lng=" + lng + ", address="
				+ address + "]";
	}
	
	
	
}
