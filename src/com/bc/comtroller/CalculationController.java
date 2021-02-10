package com.bc.comtroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calculation")
public class CalculationController extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String resv_year = req.getParameter("resv_year");
		String resv_month = req.getParameter("resv_month");
		String resv_day = req.getParameter("resv_day");
		String resv_time = req.getParameter("resv_time");
		int resv_people = Integer.valueOf(req.getParameter("resv_people"));
		
		
		
		System.out.println(resv_year+" ");
		
		resp.sendRedirect("reserv_calculation.jsp");
	}
	
}
