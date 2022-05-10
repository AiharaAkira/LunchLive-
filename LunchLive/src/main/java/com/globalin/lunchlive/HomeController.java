package com.globalin.lunchlive;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.globalin.lunchlive.account.AccountDAO;

@Controller
public class HomeController {
	
	@Autowired
	private AccountDAO ado;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request) {
		
		ado.loginCheck(request);
		
		return "index";
	}
	
}
