package com.globalin.lunchlive.page;

import java.math.BigDecimal;

public class Page {

	private BigDecimal c_page;
	private BigDecimal p_community;
	
	public Page() {
	}

	public BigDecimal getC_page() {
		return c_page;
	}

	public void setC_page(BigDecimal c_page) {
		this.c_page = c_page;
	}

	public BigDecimal getP_community() {
		return p_community;
	}

	public void setP_community(BigDecimal p_community) {
		this.p_community = p_community;
	}

	public Page(BigDecimal c_page, BigDecimal p_community) {
		super();
		this.c_page = c_page;
		this.p_community = p_community;
	}
	
	
	
	
	
	
}
