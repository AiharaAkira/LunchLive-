package com.globalin.lunchlive.account;

public interface AccountMapper {

	// 회원가입
	int join(Account account);

	

	// 로그인
	Account getAccountByID(Account account);



	int checkOverId(String u_id);




}