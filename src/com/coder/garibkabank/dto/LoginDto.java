package com.coder.garibkabank.dto;

import java.io.Serializable;


public class LoginDto implements Serializable {
	private Long custid;
	private String password;
	public LoginDto() {
		// TODO Auto-generated constructor stub
	}
	public Long getCustid() {
		return custid;
	}
	public void setCustid(Long custid) {
		this.custid = custid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "LoginDto [custid=" + custid + ", password=" + password + "]";
	}
	
}
