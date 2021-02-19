package com.bc.controller.yuna;

import java.io.IOException;
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

@WebServlet("/yuna/Memberlogin")
public class MemberLoginController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> MemberJoinController.doGet() 시작");

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd1");
		int check = 0;
		
		MemberVO vo = DAO.login_check(id); //로그인 체크
		
		System.out.println("로그인 정보 = " + vo.toString());
		
		if( vo.getId().equals(id) && vo.getPwd().equals(pwd)) { //로그인 성공
			System.out.println("로그인 성공!");
			//로그인 성공시, 세션에 아이디 등록
			HttpSession session = request.getSession();
			session.setAttribute("userid", id);
			session.setAttribute("pwd", pwd);
			
			//!!!!! 경로때문에 ../main으로 설정! (컨트롤러 1개 타고 경로 바꿔주도록 redirect)
			response.sendRedirect("../main");
			
		} else {
			System.out.println("로그인 실패");
			request.getRequestDispatcher("login_false.jsp").forward(request, response);
		}
				
			System.out.println("> ListController.doGet() 끝");
	
		}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ListController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> ListController.doPost() 끝");
	}


}
