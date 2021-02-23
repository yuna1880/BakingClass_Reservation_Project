package com.bc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.ProductDAO;
import com.bc.model.vo.ClsVO;
import com.bc.model.vo.MemberVO;


@WebServlet("/productController")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("doget 실행 확인용" );
			String cls_idx = request.getParameter("cls_idx");
			System.out.println("cls_idx : " + cls_idx);
			
			ClsVO vo = ProductDAO.selectOne(cls_idx);
			
			request.setAttribute("vo", vo);
			System.out.println("productController vo : " + vo);
			
			List<ClsVO> list = new ArrayList<ClsVO>();
			
			list.add(vo);
			for (ClsVO vo1 : list) {
				System.out.println("~~~~~~~~~~~~~~~~~"+vo1.getCls_idx());
			}
			
			if (cls_idx.equals("100")) {
				request.getRequestDispatcher("product1.jsp").forward(request, response);	
			} else if(cls_idx.equals("200")) {
				request.getRequestDispatcher("product2.jsp").forward(request, response);	
			} else if(cls_idx.equals("300")) {
				request.getRequestDispatcher("product3.jsp").forward(request, response);	
			} else if(cls_idx.equals("400")) {
				request.getRequestDispatcher("product4.jsp").forward(request, response);	
			} else if(cls_idx.equals("500")) {
				request.getRequestDispatcher("product5.jsp").forward(request, response);	
			} else if(cls_idx.equals("600")) {
				request.getRequestDispatcher("product6.jsp").forward(request, response);	
			}
			
		}

		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			doGet(request, response);
			System.out.println("post실행");
			
		}

}
