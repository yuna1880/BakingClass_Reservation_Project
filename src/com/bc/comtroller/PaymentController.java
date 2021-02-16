package com.bc.comtroller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.	model.dao.ReserveDAO;
import com.bc.model.vo.PaymentVO;

@WebServlet("/payment")
public class PaymentController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		PaymentVO vo = new PaymentVO();
		
		//결제번호
		//결제날짜
		
		//공통부분
		//결제금액
		vo.setPay_price(Integer.valueOf(req.getParameter("reserv_price")));
		//예약번호
		vo.setReserv_idx(Integer.valueOf(req.getParameter("reserv_idx")));
		
		//결제수단
		vo.setPay_method(req.getParameter("cashOrCard"));
		
		if(vo.getPay_method().equals("현금")) {
			String cash1 = req.getParameter("pay_cash1")+"/";
			String cash2 = req.getParameter("pay_cash2")+"/";
			String cash3 = req.getParameter("pay_cash3");
			String totalCash ="";
			totalCash = cash1+cash2+cash3;
			vo.setPay_bank(totalCash);
			vo.setPay_card("null");
		}else if(vo.getPay_method().equals("카드")) {
			String card1 = req.getParameter("pay_bank")+"/";
			String card2 = req.getParameter("pay_cardDateM")+"/";
			String card3 = req.getParameter("pay_cardDateY")+"/";
			String card4 = req.getParameter("cardPwd");
			String totalCard = "";
			totalCard = card1+card2+card3+card4;
			vo.setPay_card(totalCard);
			vo.setPay_bank("null");
		}
		
		List<PaymentVO> list = new ArrayList<PaymentVO>();
		list.add(vo);
		
		for (PaymentVO vo1 : list) {
			System.out.println(vo1.getPay_bank());
			System.out.println(vo1.getPay_card());
			System.out.println(vo1.getReserv_idx());
			System.out.println(vo1.getPay_method());
			System.out.println(vo1.getPay_price());
		}
		int result = ReserveDAO.insetPayment(vo);
		System.out.println(result);
		
		
		resp.sendRedirect("reserv_payExit.jsp");
	}
	
	
}
