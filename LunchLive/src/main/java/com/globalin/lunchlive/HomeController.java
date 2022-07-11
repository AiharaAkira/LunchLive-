package com.globalin.lunchlive;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.globalin.lunchlive.account.AccountDAO;
import com.globalin.lunchlive.community.CommunityDAO;
import com.globalin.lunchlive.like.LikeDAO;

@Controller
public class HomeController {
	
	@Autowired
	private AccountDAO ado;
	
	@Autowired
	private CommunityDAO cdo;
	
	@Autowired
	private LikeDAO ldo;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request) {

		
		
		cdo.getAllCommunity(request);
		ldo.likeCheckRe(request);
		ado.loginCheck(request);
		
		return "index";
	}
	
	
	
}
