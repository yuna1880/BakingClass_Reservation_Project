package com.bc.controller.review;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.bc.model.dao.DAO;
import com.bc.model.vo.ReviewVO;

//파일 업로드 컨트롤러//
@MultipartConfig(
			//location = "/tmp", //절대경로 써야한다. 기본값이 ""
			fileSizeThreshold = 1024 * 1024,
			maxFileSize = 1024*1024*50,
			maxRequestSize = 1024*1024*50*5
		)
@WebServlet("/reviewWrite")
public class ReviewWriteController extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> 여기!! ReviewWriteController.doGet() 시작");
		
		//세션에서 로그인 된 id값 가져오기. 
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("userid");
		
		//파라미터값 가져오기
		String title = request.getParameter("title");
		String className = request.getParameter("class_name");
		String star = request.getParameter("rating");
		String content = request.getParameter("content");
		
		ReviewVO vo = new ReviewVO();
		vo.setReview_title(title);
		vo.setReview_cls(className);
		vo.setReview_star(star);
		vo.setReview_content(content);
		vo.setId(id);
		
		// 파일 가져오기 
		// 파일 저장용 part
	
		try{
			
		Part filePart = request.getPart("file");
		String fileName = filePart.getSubmittedFileName();
		//스트림을 통해서 전달받은 파일 저장. 
		InputStream fis= filePart.getInputStream();
		
		// 물리경로 구하기 (알려준다)
		String realPath = request.getServletContext().getRealPath("/upload");
		System.out.println("realPath = " + realPath);
		
		// 파일경로 + \ 구분자 +파일명
		String filePath = realPath + File.separator + fileName;
		
		// 출력스트림 
		FileOutputStream fos = new FileOutputStream(filePath);
		
		// 버퍼값을 담아주는 바가지...
		// 바이트 단위로 읽어준다 . 읽을게 없을때는 -1 반환 !
		byte[] buf = new byte[1024];
		int size = 0;
		while((size = fis.read(buf)) != -1) { // 파일이 있을떄?
			fos.write(buf, 0, size);
		} 
		
		System.out.println("filePath = " + filePath);
		
		vo.setReview_image(fileName);
		vo.setReview_filepath(filePath);
		
		fos.close();
		fis.close();
		
		} catch(Exception e) {
			e.printStackTrace();
		} 
		
		System.out.println("vo 입력값 : " + vo.toString());
		
		int result = DAO.write(vo);

		request.getRequestDispatcher("review_write_ok.jsp").forward(request, response);
		
		System.out.println("> ReviewWriteController.doGet() 끝");
		
		}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ReviewListController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> ReviewListController.doPost() 끝");
	}
}