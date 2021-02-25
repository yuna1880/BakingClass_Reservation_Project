package com.bc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.ProductDAO;
import com.bc.model.vo.ClsVO;


@WebServlet("/reservGo")
public class Reserv_goController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
	
		
		
		
		request.getRequestDispatcher("reserv_form.jsp").forward(request, response);
		

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8"); 
		//doGet(request, response);
		System.out.println(request.getParameter("clsidx"));
		System.out.println(request.getParameter("clsname"));
		System.out.println(request.getParameter("clsprice"));
		request.getRequestDispatcher("reserv_form.jsp").forward(request, response);
	}

}

