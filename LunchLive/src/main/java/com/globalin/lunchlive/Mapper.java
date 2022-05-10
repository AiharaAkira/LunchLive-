package com.globalin.lunchlive;

import java.util.List;
import java.util.Map;

import com.globalin.lunchlive.account.Account;

public interface Mapper {

	List<Account> login(Map<String, String> idPw);
	
}
