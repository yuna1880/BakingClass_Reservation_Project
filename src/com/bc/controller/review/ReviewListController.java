package com.bc.controller.review;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.DAO;
import com.bc.model.vo.MemberVO;
import com.bc.model.vo.Paging;
import com.bc.model.vo.ReviewVO;

//후기 가져오는 컨트롤러
@WebServlet("/reviewList")
public class ReviewListController extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> 여기!! ReviewListController.doGet() 시작");
		
		
		//세션에서 로그인 된 id값 가져오기. 
		//HttpSession session = request.getSession();
		//String id = (String)session.getAttribute("userid");
		
		//페이징처리
		Paging p = new Paging();
		
		//1. 전체 게시물 수 구하기
		p.setTotalRecord(DAO.getTotalCount());
		p.setTotalPage();
		System.out.println(">전체 게시글 수 : " + p.getTotalRecord());
		System.out.println(">전체 페이지 수 : " + p.getTotalPage());
		
		//2.현재 페이지 구하기
		String cPage = request.getParameter("cPage");
		if(cPage != null) {
			p.setNowPage(Integer.parseInt(cPage));
		}
		
		//3.현재 페이지에 표시할 게시글 시작번호(begin), 끝번호(end) 구하기.
		p.setEnd(p.getNowPage() * p.getNumPerPage());
		p.setBegin(p.getEnd() - p.getNumPerPage() + 1);
		
		if(p.getEnd() > p.getTotalRecord()) {
			p.setEnd(p.getTotalRecord());
		}
		
		System.out.println("---------------");
		System.out.println(">>현재 페이지 : " + p.getNowPage());
		System.out.println(">>시작 글 번호 : " + p.getBegin());
		System.out.println(">>끝 글 번호 : " + p.getEnd());
		
		//페이지 블록 계산하기.
		//4. 블록의 시작페이지, 끝페이지 구하기 (현재 페이지 번호 사용.)
		int nowPage = p.getNowPage(); // 현재 페이지
		int beginPage = ((nowPage - 1) / p.getPagePerBlock()) * p.getPagePerBlock() + 1;
		p.setBeginPage(beginPage); // 시작 페이지
		p.setEndPage(p.getBeginPage() + p.getPagePerBlock() - 1); //마지막 페이지
		
		// 4-1 끝페이지 (endPage)가 전체 페이지 (totalPage) 수 보다 크면 
		// 끝페이지 값을 전체 페이지수로 변경처리.
		if(p.getEndPage() > p.getTotalPage()) {
			p.setEndPage(p.getTotalPage());
		}
		
		System.out.println(">>시작 페이지 (beginPage): " + p.getBeginPage());
		System.out.println(">>끝 페이지 (endPage): " + p.getEndPage());
		
		//------------------------------------------------------------------------
		Map<String, Integer> map = new HashMap<>();
		map.put("begin", p.getBegin());
		map.put("end", p.getEnd());
		
		
		//DB에서 리스트 조회
		List<ReviewVO> list = DAO.getList(map);
		System.out.println(">>현재 페이지 글 목록 (list): " + list);
		
		//EL , JSTL 사용을 위한 Scope 등록 !
		//2. 응답페이지(list.jsp)에 전달 (request 객체에 속성값으로 전달)
		request.setAttribute("list", list);
		request.setAttribute("pvo", p);
				
		//3. 페이지 전환 - 응답할 페이지 로 포워딩 (전환,위임)
		request.getRequestDispatcher("review.jsp").forward(request, response);

		System.out.println("> ReviewListController.doGet() 끝");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ReviewListController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> ReviewListController.doPost() 끝");
	}


}
