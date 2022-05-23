package com.globalin.lunchlive.account;

import java.math.BigDecimal;
import java.sql.Date;
public class Account {

	private String u_id;
	private String u_pw;
	private String u_nickname;
	private BigDecimal typeOfManager;
	private Date u_created_at;
	

	public Account() {
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getU_pw() {
		return u_pw;
	}

	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}

	public String getU_nickname() {
		return u_nickname;
	}

	public void setU_nickname(String u_nickname) {
		this.u_nickname = u_nickname;
	}

	

	public Date getU_created_at() {
		return u_created_at;
	}

	public void setU_created_at(Date u_created_at) {
		this.u_created_at = u_created_at;
	}
	
	

	public BigDecimal getTypeOfManager() {
		return typeOfManager;
	}

	public void setTypeOfManager(BigDecimal typeOfManager) {
		this.typeOfManager = typeOfManager;
	}

	public Account(String u_id, String u_pw, String u_nickname, BigDecimal typeOfManager, Date u_created_at) {
		super();
		this.u_id = u_id;
		this.u_pw = u_pw;
		this.u_nickname = u_nickname;
		this.typeOfManager = typeOfManager;
		this.u_created_at = u_created_at;
	}

	
	
	
	

}
