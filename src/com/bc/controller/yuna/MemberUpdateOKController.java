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

@WebServlet("/MemberUpdate_OK")
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
		
		//수정 후 다음 페이지에 넘겨줄 메세지
		String msg = "수정이 완료되었습니다. 확인해주세요.";
		String encodedMsg = URLEncoder.encode(msg, "UTF-8");
		response.sendRedirect("mypage.jsp?msg=" + encodedMsg);
		
		System.out.println("> MemberUpdateOKController.doGet() 끝");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> MemberUpdateOKController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> MemberUpdateOKController.doPost() 끝");
	}


}
