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

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		Map<String, String> idPw = new HashMap<String, String>();
		idPw.put("u_id", id);
		idPw.put("u_pw", pw);
		List<String> id1 = ss.getMapper(Mapper.class).loginId(idPw);
		List<String> pw2 = ss.getMapper(Mapper.class).loginPw(idPw);
		List<Account> accounts = ss.getMapper(Mapper.class).account(idPw);

		
		if(id1.equals(id)) {
			
			if(pw.equals(pw)) {
				
				//값 여러개 - 빈
				Account a = new Account();
				

				
			}
			
		}
		
		
		
	}

	public void loginCheck(HttpServletRequest request) {
		// hs
		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("accountInfo");

		if (a == null) {
			// 로그인 실패
			request.setAttribute("login", "loginPage.jsp");
		} else {

			// 로그인 성공
			request.setAttribute("login", "loginOK.jsp");
		}

	}

}
