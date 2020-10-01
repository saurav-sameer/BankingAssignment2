package com.coder.garibkabank.dto;

import java.io.Serializable;
import java.util.List;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.OneToMany;
import javax.persistence.Table;


import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="Customer_Registration")

public class RegistionDto implements Serializable{
	
	@Id
	@GenericGenerator(name = "cust_id", strategy = "increment")
	@GeneratedValue(generator="cust_id")
	@Column(name="custid")
	private Long custid; 
	
	@Id
	@GenericGenerator(name = "acc_number", strategy = "increment")
	@GeneratedValue(generator="acc_number")
	@Column(name="acc_number")
	private Long accNumber;
	
	@Column(name="fname")
	private String fname; 
	
	@Column(name="lname")
	private String lname;
	
	@Column(name="age")
	private Long age;
	
	@Column(name="address")
	private String address;
	
	@Column(name="country")
	private String country;
	
	@Column(name="email")
	private String email;
	
	@Column(name="sex")
	private String sex;
	
	@Column(name="contact_number")
	private Long contactNumber;
	
	@Column(name="balance")
	private Double balance;
	
	@Column(name="accType")
	private String accType;
	
	@Column(name="password")
	private String password;
	
	
    @OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY)
    @Fetch(FetchMode.SELECT)
    @JoinColumns(value = { @JoinColumn(name="acc_number"),@JoinColumn(name="custid") })
    private  List<TransactionsDto> transactionsDto;
    
    
	public RegistionDto() {
		// TODO Auto-generated constructor stub
	}
	
	
	public List<TransactionsDto> getTransactionsDto() {
		return transactionsDto;
	}
	
	public void setTransactionsDto(List<TransactionsDto> transactionsDto) {
		this.transactionsDto = transactionsDto;
	}
	public Long getCustid() {
		return custid;
	}
	public void setCustid(Long custid) {
		this.custid = custid;
	}
	public Long getAccNumber() {
		return accNumber;
	}
	public void setAccNumber(Long accNumber) {
		this.accNumber = accNumber;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public Long getAge() {
		return age;
	}
	public void setAge(Long age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Long getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(Long contactNumber) {
		this.contactNumber = contactNumber;
	}
	public Double getBalance() {
		return balance;
	}
	public void setBalance(Double balance) {
		this.balance = balance;
	}
	public String getAccType() {
		return accType;
	}
	public void setAccType(String accType) {
		this.accType = accType;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

	public String tooString() {
		return "RegistionDto [custid=" + custid + ", accNumber=" + accNumber + ", fname=" + fname + ", lname=" + lname
				+ ", age=" + age + ", address=" + address + ", country=" + country + ", email=" + email + ", sex=" + sex
				+ ", contactNumber=" + contactNumber + ", balance=" + balance + ", accType=" + accType + ", password="
				+ password + ", transactionsDto="  + "]";
	}
	
	
	
}


