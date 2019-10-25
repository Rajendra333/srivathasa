package com.techmahindra.beans;

public class PatientRegBean implements java.io.Serializable
{
	private int customer_id;
	private String username;
	private String password;
	private int GST;
	private String gender;
	private String phoneno;
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public int getcustomer_id() {
		return customer_id;
	}
	public void setcustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public int getGST() {
		return GST;
	}
	public void setGST(int GST) {
		this.GST = GST;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	
	public PatientRegBean() {
		// TODO Auto-generated constructor stub
	}
	
}
