package com.globalin.lunchlive.account;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
		List<Account> a = ss.getMapper(Mapper.class).login(idPw);
	}

}
