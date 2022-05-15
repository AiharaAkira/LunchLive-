package com.globalin.lunchlive.account;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class AccountController {

	@Autowired
	private AccountDAO ado;

	
	// id 중복 체크 컨트롤러
		@RequestMapping(value = "/account.idCheck", method = RequestMethod.GET)
		@ResponseBody
		public int idCheck(@RequestParam("u_id") String u_id) {

			return ado.userIdCheck(u_id);
		}
		
		// id 중복 체크 컨트롤러
				@RequestMapping(value = "/account.idPwCheck", method = RequestMethod.POST)
				@ResponseBody
				public int idPwCheck(@RequestParam("u_id") String u_id,@RequestParam("u_pw") String u_pw) {

					return ado.userIdPwCheck(u_id,u_pw);
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
	
	@RequestMapping(value = "/findId.do", method = RequestMethod.POST)
	public String findIdDo(HttpServletRequest request, Account account) {
		ado.loginCheckNoAccRes(request);
		ado.findIdDo(request,account);
		request.setAttribute("findAccounts", "findedId.jsp");
		return "account/findAccount";
	}
	
	@RequestMapping(value = "/findPw.do", method = RequestMethod.POST)
	public String findPwDo(HttpServletRequest request, Account account) {
		ado.findPwDo(request,account);
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
		return "redirect:/";
	}

	@RequestMapping(value = "/signUp.go", method = RequestMethod.GET)
	public String signGo(HttpServletRequest request, Account account) {

		return "account/signUp";
	}
	
	@RequestMapping(value = "/terms.go", method = RequestMethod.GET)
	public String termsGo(HttpServletRequest request, Account account) {

		return "account/terms";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {

		// 로그인 페이지로 이동
		return "account/loginPage";
	}

	@RequestMapping(value = "/login.get", method = RequestMethod.POST)
	public String loginGet(HttpServletRequest request, Account account) {
		// 로그인
		ado.login(request, account);
		ado.loginCheck(request);
		return "index";
	}

	@RequestMapping(value = "/logOut.do", method = RequestMethod.GET)
	public String logOut(HttpServletRequest request, Account account) {
		// 로그인
		ado.logout(request);
		ado.loginCheck(request);
		return "index";
	}

}
