package com.bc.controller.yuna;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.DAO;
import com.bc.model.vo.MemberVO;

@WebServlet("/MemberUpdate")
public class MemberUpdateController extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ListController.doGet() 시작");
		
		//세션에서 로그인 된 id값 가져오기. 
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("userid");
		
		MemberVO vo = DAO.login_check(id); //로그인 체크 + 정보 가져오기
		
		request.setAttribute("pwd", vo.getPwd());
		request.setAttribute("name", vo.getName());
		request.setAttribute("phone", vo.getPhone());
		request.setAttribute("addr", vo.getAddr());
		
		//회원정보 수정 페이지로 이동! 
		request.getRequestDispatcher("member_update.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ListController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> ListController.doPost() 끝");
	}


}
