package com.globalin.lunchlive.community;

import java.util.List;
import java.util.Map;

public interface CommunityMapper {

	List<Community> getAllcommunity();

	Community getCommunity(Community c);

	int updateDo(Community c);

	int deleteDo(Community c);

	int writeDo(Map<String, String> c);

}
