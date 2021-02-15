package com.bc.comtroller;

import java.io.IOException;
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

		String resv_startDate = req.getParameter("startDate");
		
		System.out.println("날짜: "+resv_startDate);
		
		
		//날짜

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
		
		//VO담기 없는거 예약번호
		ReservationVO vo = new ReservationVO();
		vo.setReserv_date(resv_startDate);
		vo.setReserv_time(resv_time);
		vo.setReserv_people(resv_people);
		vo.setReserv_price(resv_price);
		vo.setCls_idx(clsNum);
		vo.setId(id);
		vo.setReserv_status("결제대기");
		
		int result = ReserveDAO.addList(vo);
		List<ReservationVO> list = new ArrayList<ReservationVO>();
		list.add(vo);
		
		/*
		//출력해보기 테스트
		for (ReservationVO li : list) {
			System.out.println(li.getReserv_date());
			System.out.println(li.getReserv_time());
			System.out.println(li.getReserv_people());
			System.out.println(li.getReserv_price());
			System.out.println(li.getCls_idx());
			System.out.println(li.getId());
			System.out.println(li.getReserv_status());
		}
		*/
		resp.sendRedirect("reserv_myPage.jsp");
	}
	
}
