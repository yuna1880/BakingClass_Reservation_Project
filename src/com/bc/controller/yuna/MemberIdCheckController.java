package com.bc.controller.yuna;

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

@WebServlet("/yuna/checkId")
public class MemberIdCheckController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> MemberJoinController.doGet() 시작");

		// DB에서 데이터 조회 후 Json 형식 문자열 생성 후 응답처리
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		
		int data = DAO.check_id(id); //로그인 체크
		
		System.out.println(" 1: 중복     0: 중복x  : " + data);

		System.out.println("> ListController.doGet() 끝");
		
		out.print(data);
		
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ListController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> ListController.doPost() 끝");
	}


}
