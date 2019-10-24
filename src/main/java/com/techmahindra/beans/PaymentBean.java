package com.techmahindra.beans;

public class PaymentBean implements java.io.Serializable
{
	private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	private int customer_id;
	private int product_id;
	private int amount;
	public int getcustomer_id() {
		return customer_id;
	}
	public void setcustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	public int getproduct_id() {
		return product_id;
	}
	public void setproduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	

}
