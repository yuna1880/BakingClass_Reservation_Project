package com.bc.controller.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.DAO;
import com.bc.model.vo.MemberVO;
import com.bc.model.vo.ReviewVO;

//작성된 리뷰 불러오는 컨트롤러
@WebServlet("/ReviewUpdateForm")
public class ReviewUpdateCheckController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ReviewUpdateCheckController.doGet() 시작");


		//idx값 가져오기...
		String review_idx = (String)request.getParameter("idx");
		
		//DB에서 해당 인덱스의 글 리스트 조회!!
		ReviewVO vo = DAO.getOne(review_idx);
		
		System.out.println(">>해당 글 정보 (vo): " + vo.toString());
	
		request.setAttribute("vo", vo);
		
		request.getRequestDispatcher("review_update.jsp").forward(request, response);
		
		System.out.println("> ReviewUpdateCheckController.doGet() 끝");
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ReviewUpdateCheckController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> ReviewUpdateCheckController.doPost() 끝");
	}

}
