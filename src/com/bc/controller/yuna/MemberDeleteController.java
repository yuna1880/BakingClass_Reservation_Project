package com.bc.controller.yuna;

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
@WebServlet("/MemberDelete")
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
			//가입 후 페이지에 넘겨줄 메세지 
			String msg = "탈퇴처리중 오류가 발생했습니다. 다시 시도해주세요.";
			String encodedMsg = URLEncoder.encode(msg, "UTF-8");
			response.sendRedirect("login.jsp?msg=" + encodedMsg);
			
		}else {
			System.out.println("탈퇴 완료");//회원가입 정보 출력
			
			//가입 후 페이지에 넘겨줄 메세지 
			String msg = "탈퇴가 정상적으로 처리되었습니다. 안녕히 가십시오.";
			String encodedMsg = URLEncoder.encode(msg, "UTF-8");
			String clo = "close";
			session.invalidate();
			
			//response.getWriter().write(result + "");
			response.sendRedirect("mypage.jsp?msg=" + encodedMsg + "&clo=" + clo);
		} 
		

		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ListController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> ListController.doPost() 끝");
	}


}
