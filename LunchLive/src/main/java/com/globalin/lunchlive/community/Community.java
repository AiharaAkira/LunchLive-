package com.globalin.lunchlive.community;

import java.math.BigDecimal;
import java.util.Date;

public class Community {

	private BigDecimal c_no;
	private String c_title;
	private String c_contents;
	private String c_file;
	private BigDecimal c_comment;
	private BigDecimal c_like;
	private BigDecimal c_page;
	private String c_users;
	private Date c_date;
	
	public Community() {
	}

	public BigDecimal getC_no() {
		return c_no;
	}

	public void setC_no(BigDecimal c_no) {
		this.c_no = c_no;
	}

	public String getC_title() {
		return c_title;
	}

	public void setC_title(String c_title) {
		this.c_title = c_title;
	}

	public String getC_contents() {
		return c_contents;
	}

	public void setC_contents(String c_contents) {
		this.c_contents = c_contents;
	}

	public String getC_file() {
		return c_file;
	}

	public void setC_file(String c_file) {
		this.c_file = c_file;
	}

	public BigDecimal getC_comment() {
		return c_comment;
	}

	public void setC_comment(BigDecimal c_comment) {
		this.c_comment = c_comment;
	}

	public BigDecimal getC_like() {
		return c_like;
	}

	public void setC_like(BigDecimal c_like) {
		this.c_like = c_like;
	}

	public BigDecimal getC_page() {
		return c_page;
	}

	public void setC_page(BigDecimal c_page) {
		this.c_page = c_page;
	}

	public Date getC_date() {
		return c_date;
	}

	public void setC_date(Date c_date) {
		this.c_date = c_date;
	}

	public String getC_users() {
		return c_users;
	}

	public void setC_users(String c_users) {
		this.c_users = c_users;
	}

	public Community(BigDecimal c_no, String c_title, String c_contents, String c_file, BigDecimal c_comment,
			BigDecimal c_like, BigDecimal c_page, String c_users, Date c_date) {
		super();
		this.c_no = c_no;
		this.c_title = c_title;
		this.c_contents = c_contents;
		this.c_file = c_file;
		this.c_comment = c_comment;
		this.c_like = c_like;
		this.c_page = c_page;
		this.c_users = c_users;
		this.c_date = c_date;
	}


	
	
	
	
	
}
