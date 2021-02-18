package com.bc.controller.yuna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bc.model.dao.DAO;
import com.bc.model.vo.MemberVO;


//회원가입 컨트롤러
@WebServlet("/yuna/MemberJoin")
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
		
		/* if(result == 0) {
			System.out.println("가입 실패");
			
		}else {
			System.out.println("가입 성공" + vo.toString());//회원가입 정보 출력
			request.setAttribute("vo", vo);
		} */
		
		request.getRequestDispatcher("/yuna/memberjoin_ok.jsp").forward(request, response);

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ListController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> ListController.doPost() 끝");
	}


}
