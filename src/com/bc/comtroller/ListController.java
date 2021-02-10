package com.bc.comtroller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bc.model.dao.MembersDAO;
import com.bc.model.vo.MemberVO;


@WebServlet("/list")
public class ListController extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ListController.doGet() 시작");
		
		
		//1. DB연결하고 데이터 가져오기.
		List<MemberVO> list = MembersDAO.getList();
		
		//2. 응답페이지(list.jsp)에 전달 (request 객체에 속성값으로 전달)
		request.setAttribute("list", list);
		
		//3. 페이지 전환 - 응답할 페이지 (list.jsp)로 포워딩 (전환,위임)
		request.getRequestDispatcher("list.jsp").forward(request, response);
		
		System.out.println("> ListController.doGet() 끝");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ListController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> ListController.doPost() 끝");
	}

}
