package com.bc.controller.review;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.file.Files;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.DAO;
import com.bc.model.vo.ReviewVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

//파일 업로드 컨트롤러//
@WebServlet("/reviewUpdate")
public class ReviewUpdateController extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> 여기!! ReviewUpdateController.doGet() 시작");
		
		//파일을 저장할 경로 (위치)
    	String path = this.getServletContext().getRealPath("/upload");
    	System.out.println(">> path : " + path);
		
		MultipartRequest mr = new MultipartRequest(
				request,//요청객체
				path, // 실제 파일을 저장할 경로
				10 * 1024 * 1024, //업로드 파일의 최대크기 (바이트 단위)
				"UTF-8", //인코딩 형식
				new DefaultFileRenamePolicy() //파일명 중복시, 새로운 이름으로 생성
				);
		
		// 세션에서 로그인 된 id값 가져오기. 
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("userid");
		
		// 파라미터값 가져오기
		String title = mr.getParameter("title");
		String className = mr.getParameter("class_name");
		String star = mr.getParameter("rating");
		String content = mr.getParameter("content");
		String review_idx = mr.getParameter("idx");
		
		//파일삭제여부?
		String removed = mr.getParameter("removed");
		
		System.out.println("idx : " + review_idx);
		System.out.println("removed : " + removed);
		
		//해당 글 vo 가져오기.
		ReviewVO vo = DAO.getOne(review_idx);
		
		System.out.println("vo 값 : " + vo.toString());
		
		//받아온 값으로 수정하기
		vo.setReview_title(title);
		vo.setReview_cls(className);
		vo.setReview_star(star);
		vo.setReview_content(content);
		vo.setId(id);
		
		// 파일이 삭제되었을때 ?
		if (removed.equals("true")) {
			System.out.println("vo.getReview_filepath() = " + vo.getReview_filepath());
			File file = new File(vo.getReview_filepath());
			System.out.println("file = " + file);
			
			Files.delete(file.toPath());
						
			
			//파일이 존재할때
			if (file.exists()) {
				if(file.isDirectory()) {
					file.delete();
					System.out.println("파일삭제 완료 !");
					vo.setReview_image("");
					vo.setReview_filepath("");
			}
				
			} else { //파일 존재하지 않을때 ?
				vo.setReview_image("");
				vo.setReview_filepath("");
				System.out.println("존재 x 파일삭제 완료 !");
			}
		}
		
		
		// 파일변경 (mr.getFilesystemName("write_file")) & 파일변경X null 
		if (removed.equals("false")) {
			
			String fileName = mr.getFilesystemName("file");
	    	String oriName = mr.getOriginalFileName("file");
	    	if (fileName != null && fileName.trim().length() > 0) {
	    		// 파일이 변경됨
	    		vo.setReview_image(fileName);
	    	}
		}
		
		System.out.println("수정 후 vo 값 : " + vo.toString());
		
		int result = DAO.updateReview(vo);
		
		//수정 후 페이지에 넘겨줄 메세지 
		String msg = "수정이 완료되었습니다";
		String encodedMsg = URLEncoder.encode(msg, "UTF-8");
		response.sendRedirect("reviewOne?msg=" + encodedMsg + "&review_idx=" + review_idx);
		
		System.out.println(">ReviewUpdateController.doGet() 끝");
		
		}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> ReviewUpdateController.doPost() 시작");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("> ReviewUpdateController.doPost() 끝");
	}
}