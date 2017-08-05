package com.saveforest.model;

public class Customer {
	private String customerFname;
	private String customerLname;
	private int id;
	public String getCustomerFname() {
		return customerFname;
	}
	public void setCustomerFname(String customerFname) {
		this.customerFname = customerFname;
	}
	public String getCustomerLname() {
		return customerLname;
	}
	public void setCustomerLname(String customerLname) {
		this.customerLname = customerLname;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "Customer [customerFname=" + customerFname + ", customerLname="
				+ customerLname + ", id=" + id + "]";
	}
	

}
