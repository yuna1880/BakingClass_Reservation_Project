package com.bc.controller.yuna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.DAO;
import com.bc.model.vo.MemberVO;


//회원가입 컨트롤러
@WebServlet("/yuna/MemberDelete")
public class MemberDeleteController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> MemberJoinController.doGet() 시작");

		//세션에서 로그인 된 id값 가져오기. 
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("userid");
		
		int result = DAO.delete(id);
		
		if(result == 0) {
			System.out.println("탈퇴 실패");
			
		}else {
			System.out.println("탈퇴 완료");//회원가입 정보 출력
			request.getRequestDispatcher("member_delete_ok.jsp").forward(request, response);
		} 
		
		

		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ListController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> ListController.doPost() 끝");
	}


}
