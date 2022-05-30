package com.globalin.lunchlive.account;

import java.util.Map;

public interface AccountMapper {

	// 회원가입
	int join(Account account);

	// 로그인
	Account getAccountByID(Account account);

	int checkOverId(String u_id);

	String findIdDo(String u_nickname);

	int findPwDo(Account account);

	int checkOverIdPw(Map<String, String> users);

	int checkOverNickname(String u_nickname);

	int deleteAccount(Account a);

	int idPwNicknameCheck(Map<String, String> users);


	String getPassword(Account dbAccount);




}
