package com.globalin.lunchlive.account;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccountController  {
	
	@Autowired
	private AccountDAO ado;
	
	@RequestMapping(value = "/findId.do", method = RequestMethod.GET)
	public String findId(HttpServletRequest request) {
		
		
		return "account/findId";
	}
	
	@RequestMapping(value = "/findPw.do", method = RequestMethod.GET)
	public String findPw(HttpServletRequest request) {
		
		
		return "account/findPw";
	}

	
	@RequestMapping(value = "/signUp.do", method = RequestMethod.GET)
	public String signUp(HttpServletRequest request, Account account) {
		
		ado.singUp(account,request);
		ado.loginCheck(request);
		return "index";
	}
	
	@RequestMapping(value = "/signUp.go", method = RequestMethod.GET)
	public String signGo(HttpServletRequest request, Account account) {

		return "account/signUp";
	}

	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		
		//로그인 페이지로 이동
		return "account/loginPage";
	}
	
	@RequestMapping(value = "/login.get", method = RequestMethod.GET)
	public String loginGet(HttpServletRequest request,Account account) {
		//로그인
		ado.login(request, account);
		ado.loginCheck(request);
		return "index";
	}
	
	@RequestMapping(value = "/logOut.do", method = RequestMethod.GET)
	public String logOut(HttpServletRequest request,Account account) {
		//로그인
		ado.logout(request);
		ado.loginCheck(request);
		return "index";
	}
	
	



}
