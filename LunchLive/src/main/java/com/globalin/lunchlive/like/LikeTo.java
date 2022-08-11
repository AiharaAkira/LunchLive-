package com.globalin.lunchlive.like;

import java.util.List;
import java.util.Map;

import com.globalin.lunchlive.account.Account;

public interface LikeTo {

	int LikeDo(Map<String, String> likes);

	int LikeDoInsert(Map<String, String> likes);

	int likeCheck(Map<String, String> likes);

	int likeDown(Map<String, String> likes);


	int likeDelete(Map<String, String> likes);

	int likeCheckRe(Account a);

	LikeVO getAllLike(Account a);

}
