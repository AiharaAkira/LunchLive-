package com.globalin.lunchlive.community;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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

		try {
			
			String saveDirectory = request.getSession().getServletContext().getRealPath("resources/file");
			System.out.println(saveDirectory);

			MultipartRequest mr = new MultipartRequest(request, saveDirectory, 30 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());
			
			
			String c_title = mr.getParameter("c_title");
			String c_contents = mr.getParameter("c_contents");
			BigDecimal c_no = new BigDecimal(mr.getParameter("c_no"));
			String c_file = mr.getFilesystemName("c_file");
			
			Community c = new Community();
			c.setC_title(c_title);
			c.setC_contents(c_contents);
			c.setC_no(c_no);
			c.setC_file(c_file);

			if (ss.getMapper(CommunityMapper.class).updateDo(c) == 1) {

				System.out.println("수정성공!");

			} else {

				System.out.println("수정실패!");

			}
			
			
		} catch (Exception e) {

		e.printStackTrace();
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
	
	private ArrayList<Integer> page_;
	private ArrayList<Community> posts;
	
	public void getNoticeList(int page, HttpServletRequest request) {

		
		try {
			Map<String, Integer> n = new HashMap<String, Integer>();
			n.put("1",1 + (page - 1) * 10);
			n.put("2", page * 10);
			List<Community> community= ss.getMapper(CommunityMapper.class).getNoticeList(n);
			
			request.setAttribute("community", community);
			
			
			
		} catch (Exception e) {

			e.printStackTrace();
		}
	
	}
	
	public void getNextFreeDetail(HttpServletRequest request) {
		try {
			
			Map<String, String> c = new HashMap<String, String>();
			c.put("c_no", request.getParameter("c_no"));
			List<Community> community = ss.getMapper(CommunityMapper.class).getNextFreeDetail(c);
			request.setAttribute("nextP", community);
			
			
		} catch (Exception e) {

		e.printStackTrace();
		
		}
		
	
	}
	
	public void getPrevFreeDetail(HttpServletRequest request) {
		
		try {
			

			Map<String, String> c = new HashMap<String, String>();
			c.put("c_no", request.getParameter("c_no"));
			List<Community> community = ss.getMapper(CommunityMapper.class).getPrevFreeDetail(c);
			request.setAttribute("prevP", community);

			
		} catch (Exception e) {

		e.printStackTrace();
		}
		
			}
	
	
	
	
	public void paging(HttpServletRequest request) {
		
		// 한 화면에 보여줄 리스트 갯수, 페이징 범위의 갯수
				int pagePerList = 10;

				// 전체게시물 갯수, 총페이지수
				int totalContent = 0;
				int totalPage = 0;
				
				//패이지 넘기기위한 파라미터값 설정
				int pageNum = 0;
				if (request.getParameter("pageNum")==null) {
					 pageNum = 1;
				}
				else {
					pageNum = Integer.parseInt(request.getParameter("pageNum"));
				}
				
				//페이징 블록 변수
				int currentBlock = 0;
				int pageBlockLength = 2;
				int startPage = 0;
				int endPage = 0;
				
				try {
					
					totalContent = ss.getMapper(CommunityMapper.class).getPage();
					
					
					// 끝페이지 계산
					totalPage = totalContent / pagePerList;
					if (totalContent % pagePerList > 0) {
						totalPage++;
					}
					
					// 페이지 처음과 끝을 지정하는 부분
					 currentBlock = pageNum % pageBlockLength == 0 ? pageNum / pageBlockLength : (pageNum / pageBlockLength) + 1;
					 startPage = (currentBlock - 1) * pageBlockLength + 1;
					 endPage = startPage + pageBlockLength - 1;
					// 마지막 페이지 묶음에서 총 페이지수를 넘어가면 끝 페이지를 마지막 페이지 숫자로 지정
					if (endPage > totalPage) {
					    endPage = totalPage;
					}
					// 페이징 리스트 출력

					page_ = new ArrayList<Integer>();

					
					for (int i = startPage; i < endPage+1 ; i++) {
						page_.add(i);
					}
					
					request.setAttribute("startEnd", page_);
					request.setAttribute("pageNum", pageNum);
					request.setAttribute("totalPage", totalPage);


					
					
				} catch (Exception e) {

					e.printStackTrace();
				}
				
				
				
	}

	public void writeDo(HttpServletRequest request) {

		
		try {
			
			String saveDirectory = request.getSession().getServletContext().getRealPath("resources/file");
			System.out.println(saveDirectory);

			MultipartRequest mr = new MultipartRequest(request, saveDirectory, 30 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());
			
			
			
			String c_title = mr.getParameter("c_title");
			String c_contents = mr.getParameter("c_contents");
			String u_id = mr.getParameter("u_id");
			String c_file = mr.getFilesystemName("c_file");

			Map<String, String> c = new HashMap<String, String>();
			c.put("c_title", c_title);
			c.put("c_contents", c_contents);
			c.put("u_id", u_id);
			c.put("c_file", c_file);
			
			
			try {
			
				if (ss.getMapper(CommunityMapper.class).writeDo(c) == 1) {

					System.out.println("글쓰기 성공!");

				} else {
					
					System.out.println("글쓰기 실패!");
					
				}

				
				
			} catch (Exception e) {

			e.printStackTrace();
			}
			
			
		}catch (Exception e) {

			e.printStackTrace();
		}
		
		
		
		
	}

}
