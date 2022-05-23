package com.globalin.lunchlive;

import java.util.List;
import java.util.Map;

import com.globalin.lunchlive.account.Account;

public interface Mapper {


	List<String> loginId(Map<String, String> idPw);

	List<String> loginPw(Map<String, String> idPw);

	List<Account> account(Map<String, String> idPw);
	
}
