package com.bc.controller.yuna;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.DAO;
import com.bc.model.vo.MemberVO;

@WebServlet("/yuna/MemberUpdate_OK")
public class MemberUpdateOKController extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("> MemberUpdateOKController.doGet() 시작");

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd1");
		String name = request.getParameter("name");
		String phone = request.getParameter("phoneNo");
		String addr = request.getParameter("addr");
		
		MemberVO vo = new MemberVO(id,pwd,name,phone,addr);
		
		int result = DAO.update(vo); //회원정보 수정
	
		request.getRequestDispatcher("/yuna/mypage.jsp").forward(request, response);
		
		System.out.println("> MemberUpdateOKController.doGet() 끝");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> MemberUpdateOKController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> MemberUpdateOKController.doPost() 끝");
	}


}
