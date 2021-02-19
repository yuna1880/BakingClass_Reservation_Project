package com.bc.controller.review;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.bc.model.dao.DAO;
import com.bc.model.vo.MemberVO;

// 후기 삭제를 위한 비밀번호 확인 !
@WebServlet("/yuna/checkpwd")
public class ReviewPwdCheckController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> MemberJoinController.doGet() 시작");

		//세션에서 로그인 된 id값 가져오기. 
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("userid");
				
		MemberVO vo = DAO.login_check(id); //로그인 체크 + 정보수정을 위한 pwd 가져오기
		request.setAttribute("pwd", vo.getPwd());
		
		request.getRequestDispatcher("member_update_check.jsp").forward(request, response);
		
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ListController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> ListController.doPost() 끝");
	}


}
