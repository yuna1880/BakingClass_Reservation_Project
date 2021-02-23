package com.bc.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.ReserveDAO;
import com.bc.model.vo.ReservationVO;


@WebServlet("/reserv_save")
public class CalculationController extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		Date resv_startDate = Date.valueOf(req.getParameter("startDate"));
		
		System.out.println("날짜: "+resv_startDate);
		
		//날짜

		//시간
		String resv_time = req.getParameter("resv_time");
		System.out.println(resv_time);
		//인원
		int resv_people = Integer.valueOf(req.getParameter("resv_people"));
		System.out.println(resv_people);
		//결제금액
		int resv_price = Integer.valueOf(req.getParameter("totalPrice"));
		System.out.println(resv_price);
		//클래스번호
		int clsNum = Integer.valueOf(req.getParameter("clsNum"));
		System.out.println("asdsadsadsa"+clsNum);
		
		//아이디
		HttpSession hs = req.getSession();
		String id = (String)hs.getAttribute("userid");
		System.out.println("sadsadsa"+id);

		//VO담기 없는거 예약번호
		ReservationVO vo = new ReservationVO();
		vo.setReserv_date(resv_startDate);
		vo.setReserv_time(resv_time);
		vo.setReserv_people(resv_people);
		vo.setReserv_price(resv_price);
		vo.setCls_idx(clsNum);
		vo.setId(id);
		vo.setReserv_status("결제기한");

		
		
		int result = ReserveDAO.addList(vo);
		
		List<ReservationVO> list = new ArrayList<ReservationVO>();
		list.add(vo);
		
		
		resp.sendRedirect("reserv_myPage.jsp");
	}
	
}
