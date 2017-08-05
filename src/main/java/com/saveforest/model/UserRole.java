package com.saveforest.model;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
@Access(value=AccessType.FIELD)
public class UserRole {
     @Id
	private int userRoleId;
   
     @OneToOne(fetch = FetchType.LAZY)
     @PrimaryKeyJoinColumn
     public User user;
	
   
 	public User getUser() {
 		return this.user;
 	}
    
     
	public void setUser(User user) {
		this.user = user;
	}

	@Enumerated(EnumType.ORDINAL)
	private RolesEnum roles;

	public int getUserRoleId() {
		return userRoleId;
	}

	public void setUserRoleId(int userRoleId) {
		this.userRoleId = userRoleId;
	}

	public RolesEnum getRoles() {
		return roles;
	}

	public void setRoles(RolesEnum roles) {
		this.roles = roles;
	}
	
	
	
}
