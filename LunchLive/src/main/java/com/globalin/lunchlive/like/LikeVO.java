package com.globalin.lunchlive.like;

import java.math.BigDecimal;

public class LikeVO {

	private BigDecimal l_no;
	private BigDecimal l_community;
	private String l_users;
	private BigDecimal l_check;
	
	
	public LikeVO() {
	}


	public BigDecimal getL_no() {
		return l_no;
	}


	public void setL_no(BigDecimal l_no) {
		this.l_no = l_no;
	}


	public BigDecimal getL_community() {
		return l_community;
	}


	public void setL_community(BigDecimal l_community) {
		this.l_community = l_community;
	}


	public String getL_users() {
		return l_users;
	}


	public void setL_users(String l_users) {
		this.l_users = l_users;
	}


	public BigDecimal getL_check() {
		return l_check;
	}


	public void setL_check(BigDecimal l_check) {
		this.l_check = l_check;
	}


	public LikeVO(BigDecimal l_no, BigDecimal l_community, String l_users, BigDecimal l_check) {
		super();
		this.l_no = l_no;
		this.l_community = l_community;
		this.l_users = l_users;
		this.l_check = l_check;
	}
	
	
	
}
