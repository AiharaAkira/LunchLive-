package com.globalin.lunchlive.community;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.globalin.lunchlive.account.AccountDAO;

@Controller
public class CommunityController {
	
	@Autowired
	private CommunityDAO cdo;
	
	@Autowired
	private AccountDAO ado;
	
	@RequestMapping(value = "/detail.go", method = RequestMethod.GET)
	public String detailGo(HttpServletRequest request) {
		
		cdo.detaile(request);
		
		return "community/detail";
	}
	
	@RequestMapping(value = "/write.go", method = RequestMethod.GET)
	public String writeGo(HttpServletRequest request) {
		
		
		return "community/write";
	}
	
	@RequestMapping(value = "/write.do", method = RequestMethod.POST)
	public String writeDo(HttpServletRequest request) {
		
		cdo.writeDo(request);
		ado.loginCheck(request);
		cdo.getAllCommunity(request);
		
		return "redirect:/";
	}

	
	
	@RequestMapping(value = "/update.go", method = RequestMethod.GET)
	public String updateGo(HttpServletRequest request) {
		
		cdo.detaile(request);
		
		return "community/update";
	}
	
	@RequestMapping(value = "/update.do", method = RequestMethod.POST)
	public String detailDo(HttpServletRequest request) {
		
		cdo.detailDo(request);
		ado.loginCheck(request);
		cdo.getAllCommunity(request);
		return "redirect:/";
	}
	
	
		
		@RequestMapping(value = "/delete.do", method = RequestMethod.GET)
		public String deleteDo(HttpServletRequest request) {
			
			cdo.deleteDo(request);
			ado.loginCheck(request);
			cdo.getAllCommunity(request);
			return "redirect:/";
		}
	
	
	
}

