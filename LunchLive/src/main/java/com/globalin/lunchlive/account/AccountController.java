package com.globalin.lunchlive.account;
	
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.globalin.lunchlive.community.CommunityDAO;
import com.globalin.lunchlive.like.LikeDAO;
	
@Controller
public class AccountController {
	
	@Autowired
	private LikeDAO ldo;
	
	@Autowired
	private AccountDAO ado;
	
	@Autowired
	private CommunityDAO cdo;
	
	// id 중복 체크 컨트롤러
	@RequestMapping(value = "/account.idCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam("u_id") String u_id) {
			
		return ado.userIdCheck(u_id);
		
	}
	
	// id 중복 체크 컨트롤러
	@RequestMapping(value = "/account.idCheckOnFind", method = RequestMethod.POST)
	@ResponseBody
	public int idCheckOnFind(@RequestParam("u_id") String u_id) {
		
		return ado.userIdCheck(u_id);
		
	}
	
	// 닉네임찾기 컨트롤러
	@RequestMapping(value = "/account.nicknameCheckOnFind", method = RequestMethod.POST)
	@ResponseBody
	public int nicknameCheckOnFind(@RequestParam("u_nickname") String u_nickname) {
		
		return ado.userNicknameCheck(u_nickname);
		
	}
	
	// idpw 중복 체크 컨트롤러
	@RequestMapping(value = "/account.idPwCheck", method = RequestMethod.POST)
	@ResponseBody
	public int idPwCheck(HttpServletRequest request, Account a, HttpServletResponse respone) throws IOException {
		
		return ado.userIdPwCheck(request, a, respone);
		
	}
	
	// 회원삭제시 중복 체크 컨트롤러
		@RequestMapping(value = "/account.idPwNicknameCheck", method = {RequestMethod.POST, RequestMethod.GET})
		@ResponseBody
		public int idPwNicknameCheck(HttpServletRequest request, Account a, HttpServletResponse response) throws IOException {
			
			return ado.idPwNicknameCheck(request, response, a);
			
		}
		
	// 닉네임 중복 체크 컨트롤러
	@RequestMapping(value = "/account.nicknameCheck", method = RequestMethod.GET)
	@ResponseBody
	public int nicknameCheck(@RequestParam("u_nickname") String u_nickname) {
		
		return ado.userNicknameCheck(u_nickname);
		
	}
	
	@RequestMapping(value = "/findId.go", method = RequestMethod.GET)
	public String findIdGo(HttpServletRequest request) {
		
		ado.loginCheckNoAccRes(request);
		request.setAttribute("findAccounts", "findId.jsp");
		return "account/findAccount";
		
	}
	
	@RequestMapping(value = "/withdrawal.go", method = RequestMethod.GET)
	public String withdrawlGo(HttpServletRequest request) {
		return "account/withdrawal";
	}
	
	@RequestMapping(value = "/withdrawal.do", method = RequestMethod.POST)
	public String withdrawlDo(HttpServletResponse respone,HttpServletRequest request, Account a) throws IOException {
		ado.deleteAccount(request, respone, a);
		ado.logout(request);
		ado.loginCheck(request);
		cdo.getAllCommunity(request);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/findId.do", method = RequestMethod.POST)
	public String findIdDo(HttpServletRequest request, Account account) {
		ado.loginCheckNoAccRes(request);
		ado.findIdDo(request, account);
		request.setAttribute("findAccounts", "findedId.jsp");
		return "account/findAccount";
	}
	
	@RequestMapping(value = "/findPw.do", method = RequestMethod.POST)
	public String findPwDo(HttpServletRequest request, Account account) {
		ado.findPwDo(request, account);
		ado.loginCheck(request);
		return "redirect:/login.do";
	}
	
	@RequestMapping(value = "/findPw.go", method = RequestMethod.GET)
	public String findPwGo(HttpServletRequest request) {
		ado.loginCheckNoAccRes(request);
		request.setAttribute("findAccounts", "findPw.jsp");
		return "account/findAccount";
	}
	
	@RequestMapping(value = "/signUp.do", method = RequestMethod.POST)
	public String signUp(HttpServletRequest request, Account account) {

		ado.singUp(account, request);
		ado.loginCheck(request);
		cdo.getAllCommunity(request);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/signUp.go", method = RequestMethod.GET)
	public String signGo(HttpServletRequest request, Account account) {
		ado.loginCheck(request);
		return "account/signUp";
	}
	
	@RequestMapping(value = "/terms.go", method = RequestMethod.GET)
	public String termsGo(HttpServletRequest request, Account account) {
		ado.loginCheck(request);
		return "account/terms";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		
		// 로그인 페이지로 이동
		ado.loginCheck(request);
		return "account/loginPage";
	}
	
	@RequestMapping(value = "/login.get", method = {RequestMethod.POST, RequestMethod.GET})
	public String loginGet(HttpServletRequest request, Account account, HttpServletResponse response)
			throws IOException {
		// 로그인
		ado.login(request, account, response);
		ado.loginCheck(request);
		ldo.likeCheckRe(request);
		cdo.getAllCommunity(request);
		
		return "index";
	}
	
	@RequestMapping(value = "/logOut.do", method = RequestMethod.GET)
	public String logOut(HttpServletRequest request, Account account) {
		// 로그인
		ado.logout(request);
		ado.loginCheck(request);
		cdo.getAllCommunity(request);
		return "redirect:/";
	}
	
}
