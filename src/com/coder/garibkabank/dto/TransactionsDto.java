package com.coder.garibkabank.dto;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="Transactions")
public class TransactionsDto implements Serializable{
	@Id
	@GenericGenerator(name = "tran_id", strategy = "increment")
	@GeneratedValue(generator="tran_id")
 	private Long tranid;
 	
	@Column(name="date")
	private Date date;
 
	
	@Column(name="credit")
 	private Double credit;
	
	@Column(name="balance")
 	private Double balance;
	
	@Column(name="remarks")
 	private String  remarks;
	
	@Column(name="debit")
	private Double debitamount;
	
	@ManyToOne()
	@JoinColumns(value = { @JoinColumn(name="acc_number"),@JoinColumn(name="custid") })
 	private RegistionDto registionDto;
 
	public RegistionDto getRegistionDto() {
		return registionDto;
	}

	public void setRegistionDto(RegistionDto registionDto) {
		this.registionDto = registionDto;
	}

	public TransactionsDto() {
	}

	public Long getTranid() {
		return tranid;
	}

	public void setTranid(Long tranid) {
		this.tranid = tranid;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Double getBalance() {
		return balance;
	}

	public void setBalance(Double balance) {
		this.balance = balance;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	
	public Double getCredit() {
		return credit;
	}

	public void setCredit(Double credit) {
		this.credit = credit;
	}

	public Double getDebitamount() {
		return debitamount;
	}

	public void setDebitamount(Double debitamount) {
		this.debitamount = debitamount;
	}

	@Override
	public String toString() {
		return "TransactionsDto [tranid=" + tranid + ", date=" + date + ", credit=" + credit + ", balance=" + balance
				+ ", remarks=" + remarks + ", debitamount=" + debitamount + ", registionDto=" + registionDto + "]";
	}
 	
	
}
