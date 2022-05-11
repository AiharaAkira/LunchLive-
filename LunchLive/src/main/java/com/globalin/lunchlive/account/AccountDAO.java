package com.globalin.lunchlive.account;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountDAO {

	@Autowired
	SqlSession ss;

	public void login(HttpServletRequest request, Account account) {

		Account dbAccount = ss.getMapper(AccountMapper.class).getAccountByID(account);

		if (dbAccount != null) {
			if (account.getU_pw().equals(dbAccount.getU_pw())) {
				request.getSession().setAttribute("loginAccount", dbAccount);
				request.getSession().setMaxInactiveInterval(60*10);
			} else {
				System.out.println("비밀번호다름_로그인실패!");
			}
		}else {
			System.out.println("미가입 id_로그인실패");
		}

	}

	public boolean loginCheck(HttpServletRequest request) {
		Account account = (Account) request.getSession().getAttribute("loginAccount");

		if(account != null) {
			request.setAttribute("login", "account/loginOK.jsp");
			return true;
		}else {
			request.setAttribute("login", "account/loginReady.jsp");
			return false;
			
		}
		
	}

	public void logout(HttpServletRequest request) {
		request.getSession().setAttribute("loginAccount", null);
	}


	public void singUp(Account account, HttpServletRequest request) {
		String id = request.getParameter("u_id");
		String pw = request.getParameter("u_pw");
		String nickname = request.getParameter("u_nickname");
		
		account.setU_id(id);
		account.setU_pw(pw);
		account.setU_nickname(nickname);
		
		if(ss.getMapper(AccountMapper.class).join(account)==1) {
			System.out.println("가입성공");
		}else {
			System.out.println("가입실패");
		}
		
		
	}

	

}
