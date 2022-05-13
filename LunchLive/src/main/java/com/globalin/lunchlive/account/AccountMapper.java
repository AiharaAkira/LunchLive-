package com.globalin.lunchlive.account;

public interface AccountMapper {

	Account getAccountByID(Account account);

	int join(Account account);

	// 아이디 중복 체크
	int accountGetId(Account account);

	


}
