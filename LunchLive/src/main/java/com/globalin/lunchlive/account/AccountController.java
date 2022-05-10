package com.globalin.lunchlive.account;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccountController  {
	@RequestMapping(value = "/findId.do", method = RequestMethod.GET)
	public String findId(HttpServletRequest request) {
		
		
		return "account/findId";
	}
	
	@RequestMapping(value = "/findPw.do", method = RequestMethod.GET)
	public String findPw(HttpServletRequest request) {
		
		
		return "account/findPw";
	}

	
	@RequestMapping(value = "/signUp.do", method = RequestMethod.GET)
	public String signUp(HttpServletRequest request) {
		
		
		return "account/signUp";
	}

	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		
		
		return "account/loginPage";
	}
	
	



}
