package com.techmahindra.beans;

public class TestRegBean implements java.io.Serializable
{
	private int product_id;
	private String product_name;
	private String product_type;
	private String reg_date;
	private String test_date;
	//private int test_hr;
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	//private int test_min;
	private int amount;
	public int getproduct_id() {
		return product_id;
	}
	public void setproduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getproduct_name() {
		return product_name;
	}
	public void setproduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getproduct_type() {
		return product_type;
	}
	public void setproduct_type(String product_type) {
		this.product_type = product_type;
	}
	public String getTest_date() {
		return test_date;
	}
	public void setTest_date(String test_date) {
		this.test_date = test_date;
	}
	/*public int getTest_hr() {
		return test_hr;
	}
	public void setTest_hr(int test_hr) {
		this.test_hr = test_hr;
	}
	public int getTest_min() {
		return test_min;
	}
	public void setTest_min(int test_min) {
		this.test_min = test_min;
	}*/
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
}
