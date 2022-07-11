package com.globalin.lunchlive.like;
	
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.globalin.lunchlive.account.AccountDAO;
import com.globalin.lunchlive.community.CommunityDAO;
	
@Controller
public class LikeController {
	
	@Autowired
	private AccountDAO ado;
	
	@Autowired
	private CommunityDAO cdo;
	
	@Autowired
	private LikeDAO ldo;
	
	// id 중복 체크 컨트롤러
	@RequestMapping(value = "/like.do", method = RequestMethod.GET)
	@ResponseBody
	public int likeDo(HttpServletRequest request) {
		return ldo.likeDo(request);
		
	}
	
	
	
}
