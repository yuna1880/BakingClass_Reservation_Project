package com.bc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.ProductDAO;
import com.bc.model.vo.ClsVO;


@WebServlet("/list")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ListController.doGet() 시작 ");
		
//		Cookie cookie = new Cookie("id", "yuna1880");
//		response.addCookie(cookie);
		Cookie[] cookies = request.getCookies();
		for (Cookie c : cookies) {
			System.out.println(c.getName() + ", " + c.getValue());
			if (c.getName().equals("id")) {
				System.out.println("cookie 값 : " + c.getValue());
				break;
			}
		}
	
		List<ClsVO> list = ProductDAO.getList();
		request.setAttribute("list", list); 
		
		for (ClsVO vo : list) {
			System.out.println(vo);
		};
		
		request.getRequestDispatcher("main.jsp").forward(request, response);
		
		System.out.println("> ListController.doGet() 끝 ");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ListController.doPost() 시작 ");
		request.setCharacterEncoding("UTF-8"); 
		doGet(request, response);
		System.out.println("> ListController.doPost() 끝 ");
	}

}

