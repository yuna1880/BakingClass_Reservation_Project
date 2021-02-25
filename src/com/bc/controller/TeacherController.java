package com.bc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.ProductDAO;
import com.bc.model.vo.ClsVO;
import com.bc.model.vo.TeacherVO;


@WebServlet("/TeacherList")
public class TeacherController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ListController.doGet() 시작 ");
	
		List<TeacherVO> list = ProductDAO.getteacherList();
		request.setAttribute("teacherlist", list); 
		
		request.getRequestDispatcher("teacher.jsp").forward(request, response);
		
		System.out.println("> ListController.doGet() 끝 ");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ListController.doPost() 시작 ");
		request.setCharacterEncoding("UTF-8"); 
		doGet(request, response);
		System.out.println("> ListController.doPost() 끝 ");
	}

}

