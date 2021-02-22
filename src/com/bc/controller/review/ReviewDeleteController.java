package com.bc.controller.review;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.DAO;
import com.bc.model.vo.MemberVO;


//회원가입 컨트롤러
@WebServlet("/ReviewDelete")
public class ReviewDeleteController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ReviewDeleteController.doGet() 시작");

		//세션에서 로그인 된 id값 가져오기. 
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("userid");
		
		String review_idx = request.getParameter("idx");
		
		System.out.println("현재 review_idx : " + review_idx);
		
		int result = DAO.review_delete(review_idx);
		
		//삭제 완료 후 페이지에 넘겨줄 메세지.
		String msg = "삭제가 완료되었습니다.";
		String encodedMsg = URLEncoder.encode(msg, "UTF-8");
				
		response.sendRedirect("reviewList?msg=" + encodedMsg);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ReviewDeleteController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> ReviewDeleteController.doPost() 끝");
	}


}
