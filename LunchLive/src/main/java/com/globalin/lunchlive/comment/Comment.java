package com.globalin.lunchlive.comment;

import java.math.BigDecimal;
import java.util.Date;

public class Comment {

	private BigDecimal com_no;
	private String com_title;
	private String com_content;
	private String com_users;
	private BigDecimal com_community;
	private Date com_date;
	
	public Comment() {
	}

	public BigDecimal getCom_no() {
		return com_no;
	}

	public void setCom_no(BigDecimal com_no) {
		this.com_no = com_no;
	}

	public String getCom_title() {
		return com_title;
	}

	public void setCom_title(String com_title) {
		this.com_title = com_title;
	}

	public String getCom_content() {
		return com_content;
	}

	public void setCom_content(String com_content) {
		this.com_content = com_content;
	}

	public String getCom_users() {
		return com_users;
	}

	public void setCom_users(String com_users) {
		this.com_users = com_users;
	}

	public BigDecimal getCom_community() {
		return com_community;
	}

	public void setCom_community(BigDecimal com_community) {
		this.com_community = com_community;
	}

	public Date getCom_date() {
		return com_date;
	}

	public void setCom_date(Date com_date) {
		this.com_date = com_date;
	}

	public Comment(BigDecimal com_no, String com_title, String com_content, String com_users, BigDecimal com_community,
			Date com_date) {
		super();
		this.com_no = com_no;
		this.com_title = com_title;
		this.com_content = com_content;
		this.com_users = com_users;
		this.com_community = com_community;
		this.com_date = com_date;
	}

	
	
	
	
	
	
}
