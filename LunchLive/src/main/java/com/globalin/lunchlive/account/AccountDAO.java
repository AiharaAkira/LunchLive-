package com.globalin.lunchlive.account;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AccountDAO {

	@Autowired
	SqlSession ss;
	@Autowired
	SqlSessionTemplate template;
	private AccountMapper am;

	public void login(HttpServletRequest request, Account account, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		Account dbAccount = ss.getMapper(AccountMapper.class).getAccountByID(account);
		
		if (dbAccount != null) {
			if (encoder.matches(request.getParameter("u_pw"), dbAccount.getU_pw())) {
				request.getSession().setAttribute("loginAccount", dbAccount);
				request.getSession().setMaxInactiveInterval(60 * 10);
				out.flush();
			} else {
				System.out.println("비밀번호다름_로그인실패!");
				out.flush();
			}
		} else {
			System.out.println("미가입 id_로그인실패");
		}
	}

	public boolean loginCheck(HttpServletRequest request) {
		Account account = (Account) request.getSession().getAttribute("loginAccount");

		if (account != null) {
			request.setAttribute("login", "account/loginOK.jsp");
			return true;
		} else {
			request.setAttribute("login", "account/loginReady.jsp");
			return false;

		}

	}

	public void logout(HttpServletRequest request) {
		request.getSession().setAttribute("loginAccount", null);
	}

	public void singUp(Account account, HttpServletRequest request) {

		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

		String id = request.getParameter("u_id");
		String pw = encoder.encode(request.getParameter("u_pw"));
		String nickname = request.getParameter("u_nickname");

		account.setU_id(id);
		account.setU_pw(pw);
		account.setU_nickname(nickname);

		if (ss.getMapper(AccountMapper.class).join(account) == 1) {
			System.out.println("가입성공");
		} else {
			System.out.println("가입실패");
		}

	}

	public int userIdCheck(String u_id) {

		am = template.getMapper(AccountMapper.class);

		return am.checkOverId(u_id);
	}

	public int userNicknameCheck(String u_nickname) {

		am = template.getMapper(AccountMapper.class);
		return am.checkOverNickname(u_nickname);
	}

	public boolean loginCheckNoAccRes(HttpServletRequest request) {
		Account account = (Account) request.getSession().getAttribute("loginAccount");

		if (account != null) {
			request.setAttribute("login", "loginOK.jsp");
			return true;
		} else {
			request.setAttribute("login", "loginReady.jsp");
			return false;

		}
	}

	public void findIdDo(HttpServletRequest request, Account account) {

		String u_nickname = request.getParameter("u_nickname");
		request.setAttribute("u_id", ss.getMapper(AccountMapper.class).findIdDo(u_nickname));

	}

	public void findPwDo(HttpServletRequest request, Account account) {

		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");

		account.setU_id(u_id);
		account.setU_pw(u_pw);

		if (ss.getMapper(AccountMapper.class).findPwDo(account) == 1) {

			System.out.println("수정성공");
		} else {
			System.out.println("수정실패");
		}

	}

	// idpw찾기, 로그인
	public int userIdPwCheck(HttpServletRequest request, Account a) {

		Map<String, String> users = new HashMap<String, String>();

		users.put("u_id", request.getParameter("u_id"));
		users.put("u_pw", request.getParameter("u_pw"));
		am = template.getMapper(AccountMapper.class);

		return am.checkOverIdPw(users);
	}

	public void deleteAccount(HttpServletRequest request, Account a) {

		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		String u_nickname = request.getParameter("u_nickname");

		a.setU_id(u_id);
		a.setU_pw(u_pw);
		a.setU_nickname(u_nickname);

		if (ss.getMapper(AccountMapper.class).deleteAccount(a) == 1) {
			System.out.println("회원삭제 성공!");
		} else {
			System.out.println("회원삭제 실패!");

		}

	}

	public int idPwNicknameCheck(HttpServletRequest request, Account a) {
		Map<String, String> users = new HashMap<String, String>();

		users.put("u_id", request.getParameter("u_id"));
		users.put("u_pw", request.getParameter("u_pw"));
		users.put("u_nickname", request.getParameter("u_nickname"));
		users.put("u_pwCheck", request.getParameter("u_pwCheck"));
		am = template.getMapper(AccountMapper.class);

		return am.idPwNicknameCheck(users);

	}

}
