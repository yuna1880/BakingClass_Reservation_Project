package com.bc.comtroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/calculation")
public class CalculationController extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String resv_year = req.getParameter("resv_year");
		String resv_month = "/"+req.getParameter("resv_month");
		String resv_day = "/"+req.getParameter("resv_day");
		
		//날짜
		String date ="";
		date = resv_year+resv_month+resv_day;
		//시간
		String resv_time = req.getParameter("resv_time");
		//인원
		int resv_people = Integer.valueOf(req.getParameter("resv_people"));
		//결제금액
		int resv_price = Integer.valueOf(req.getParameter("totalPrice"));
		//클래스번호
		int clsNum = Integer.valueOf(req.getParameter("clsNum"));
		//아이디
		HttpSession hs = req.getSession();
		String id = (String)hs.getAttribute("id");
		
		System.out.println(clsNum+" "+id);
		
		resp.sendRedirect("reserv_calculation.jsp");
	}
	
}
