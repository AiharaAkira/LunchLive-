package com.globalin.lunchlive.community;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommunityDAO {

	@Autowired
	SqlSession ss;
	@Autowired
	SqlSessionTemplate template;

	public void getAllCommunity(HttpServletRequest request) {

		CommunityMapper communityMapper = ss.getMapper(CommunityMapper.class);

		List<Community> communities = communityMapper.getAllcommunity();
		request.setAttribute("communities", communities);

	}

	public void detaile(HttpServletRequest request) {
		
		Community c = new Community();
		
		c.setC_no(new BigDecimal(request.getParameter("c_no")));
		request.setAttribute("communities", ss.getMapper(CommunityMapper.class).getCommunity(c));
		
	}

	public void detailDo(HttpServletRequest request) {

		String c_title = request.getParameter("c_title");
		String c_contents = request.getParameter("c_contents");
		BigDecimal c_no = new BigDecimal(request.getParameter("c_no"));

		Community c = new Community();
		c.setC_title(c_title);
		c.setC_contents(c_contents);
		c.setC_no(c_no);

		if (ss.getMapper(CommunityMapper.class).updateDo(c) == 1) {

			System.out.println("수정성공!");

		} else {

			System.out.println("수정실패!");

		}

	}

	public void deleteDo(HttpServletRequest request) {

		BigDecimal c_no = new BigDecimal(request.getParameter("c_no"));
		Community c = new Community();
		c.setC_no(c_no);

		if (ss.getMapper(CommunityMapper.class).deleteDo(c) == 1) {

			System.out.println("삭제성공!");

		} else {

			System.out.println("삭제실패!");

		}

	}

	public void writeDo(HttpServletRequest request) {

		String c_title = request.getParameter("c_title");
		String c_contents = request.getParameter("c_contents");
		String u_id = request.getParameter("u_id");
		

		Map<String, String> c = new HashMap<String, String>();
		c.put("c_title", c_title);
		c.put("c_contents", c_contents);
		c.put("u_id", u_id);
		
		
		try {
		
			if (ss.getMapper(CommunityMapper.class).writeDo(c) == 1) {

				System.out.println("글쓰기 성공!");

			} else {
				
				System.out.println("글쓰기 실패!");
				
			}

			
			
		} catch (Exception e) {

		e.printStackTrace();
		}
		
		
	}

}
