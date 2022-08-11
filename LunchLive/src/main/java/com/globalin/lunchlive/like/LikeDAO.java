package com.globalin.lunchlive.like;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globalin.lunchlive.account.Account;

@Service
public class LikeDAO {

	@Autowired
	SqlSession ss;

	public int likeDo(HttpServletRequest request) {
	
		try {
			
			Map<String, String> likes = new HashMap<String, String>();
			
			likes.put("c_no", request.getParameter("c_no"));
			likes.put("u_id", request.getParameter("u_id"));
			
			//자기 이름 좋아요 검색
			if(ss.getMapper(LikeTo.class).likeCheck(likes)>=1) {
				System.out.println("좋아요 검색");
				//좋아요 다운
				if(ss.getMapper(LikeTo.class).likeDown(likes)==1) {
					
					ss.getMapper(LikeTo.class).likeDelete(likes);
					System.out.println("좋아요 다운");
					return 2;
				}else {
					System.out.println("좋아요 다운 실패");
					
				}
			}else if(ss.getMapper(LikeTo.class).likeCheck(likes)==0){

				//좋아요 증가
				if(ss.getMapper(LikeTo.class).LikeDo(likes)==1) {
					ss.getMapper(LikeTo.class).LikeDoInsert(likes);
					System.out.println("좋아요 증가");
					
				}else {
					
					System.out.println("좋아요 증가 실패");
				}
				
				
			}else {
				System.out.println("좋아요 검색 실패");
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return 1;
		
		
		
	}
	
	
	public void likeCheckRe(HttpServletRequest request) {
		
		try {
			

			if(request.getSession().getAttribute("loginAccount") != null) {
			

				Account a= (Account)request.getSession().getAttribute("loginAccount");
				if(ss.getMapper(LikeTo.class).likeCheckRe(a)>=1) {
					System.out.println("좋아요 체킹!");
					
					
					request.setAttribute("likeChecked","likeChecked");
				}	
				
				
				try {
					
					LikeVO likes = ss.getMapper(LikeTo.class).getAllLike(a);
				
					request.setAttribute("likes", likes);
					
				} catch (Exception e) {

				e.printStackTrace();
				
				}
				
			}

			
			
		} catch (Exception e) {
			e.printStackTrace();
		
		}		
		
	}

}
