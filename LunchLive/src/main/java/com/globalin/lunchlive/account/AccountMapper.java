package com.globalin.lunchlive.account;

public interface AccountMapper {

	Account getAccountByID(Account account);

	int join(Account account);

}
