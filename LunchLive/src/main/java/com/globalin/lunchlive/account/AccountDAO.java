package com.globalin.lunchlive.account;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globalin.lunchlive.Mapper;

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

}
