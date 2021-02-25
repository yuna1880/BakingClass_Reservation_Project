package com.bc.controller.yuna;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bc.model.dao.DAO;
import com.bc.model.vo.MemberVO;


//회원가입 컨트롤러
@WebServlet("/MemberJoin")
public class MemberJoinController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> MemberJoinController.doGet() 시작");

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd1");
		String name = request.getParameter("name");
		String phone = request.getParameter("phoneNo");
		String addr = request.getParameter("addr");
		
		MemberVO vo = new MemberVO(id,pwd,name,phone,addr);
		
		int result = DAO.insert(vo);
		
		//가입 후 페이지에 넘겨줄 메세지 
		String msg = "회원가입이 완료되었습니다. 환영합니다. 로그인 페이지로 이동합니다.";
		String encodedMsg = URLEncoder.encode(msg, "UTF-8");
		response.sendRedirect("login.jsp?msg=" + encodedMsg);
				
		System.out.println(">MemberJoinController.doGet() 끝");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ListController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> ListController.doPost() 끝");
	}


}
