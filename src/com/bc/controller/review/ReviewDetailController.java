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
@WebServlet("/reviewOne")
public class ReviewDetailController extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ReviewDetailController.doGet() 시작");
		
		String review_idx = (String)request.getParameter("review_idx");
		System.out.println(">>해당 글 review_idx : " + review_idx);
		
		//DB에서 리스트 조회
		ReviewVO vo = DAO.getOne(review_idx);
		System.out.println(">>해당 글 정보 (vo): " + vo.toString());
		
		//EL , JSTL 사용을 위한 Scope 등록 !
		//2. 응답페이지(list.jsp)에 전달 (request 객체에 속성값으로 전달)
		request.setAttribute("vo", vo);
				
		//3. 페이지 전환 - 응답할 페이지 로 포워딩 (전환,위임)
		request.getRequestDispatcher("review_detail.jsp").forward(request, response);

		System.out.println("> ReviewDetailController.doGet() 끝");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ReviewDetailController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> ReviewDetailController.doPost() 끝");
	}


}
