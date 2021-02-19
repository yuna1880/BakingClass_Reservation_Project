package com.bc.model.dao;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import com.bc.model.vo.MemberVO;
import com.bc.model.vo.ReviewVO;
import com.bc.mybatis.DBService;
public class DAO {
	
	//테스트용
	/*public static List<MemberVO> getList() {
		SqlSession ss = DBService.getFactory().openSession();
		List<MemberVO> list = ss.selectList("Baking_y.all");
		ss.close();

		System.out.println(list);
		return list;
	}*/
	
	//회원가입
	public static int insert(MemberVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("Baking_y.join",vo);
		ss.close();
		return result;
	}
	
	//로그인
	public static MemberVO login_check(String id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		MemberVO vo = ss.selectOne("Baking_y.login",id);
		ss.close();
		return vo;
	}
	
	//회원 정보 수정
	public static int update(MemberVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("Baking_y.update",vo);
		ss.close();
		return result;
	}
	
	//회원 탈퇴
	public static int delete(String id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("Baking_y.delete",id);
		ss.close();
		return result;
	}
	
	//아이디 중복체크
	public static int check_id(String id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.selectOne("Baking_y.check_id",id);
		ss.close();
		return result;
	}
	
	//---------------- 후기 게시판 --------------------------------------------------------
	
	//후기 리스트 가져오기
	public static List<ReviewVO> getReview() {
		SqlSession ss = DBService.getFactory().openSession();
		List<ReviewVO> list = ss.selectList("Baking_y.review_all");
		ss.close();
		//리스트 가져오는지 확인
		System.out.println(list);
		return list;
	}
	
	// 해당 페이지에 해당하는 후기 게시글  (ReviewVO) 가져오기.
	public static List<ReviewVO> getList(Map<String, String> map) {
		SqlSession ss = DBService.getFactory().openSession();
		List<ReviewVO> list = ss.selectList("Baking_y.review_list", map);
		ss.close();
		return list;
	}
	
	// 후기 게시글 (ReviewVO) 전체 건수 조회
	public static int getTotalCount(String select_, String query_) {
		Map<String, String> map = new HashMap<>();
		map.put("select_", select_);
		map.put("query_", query_);
		
		SqlSession ss = DBService.getFactory().openSession();
		int totalCount = ss.selectOne("Baking_y.totalCount", map);
		return totalCount;
	}
	
	// 키워드로 게시물 (제목 검색) 으로 조회
	public static List<ReviewVO> getListTitle(String begin, String end, String query_) {
		Map<String, String> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);
		map.put("query_", query_);
		
		SqlSession ss = DBService.getFactory().openSession();
		List<ReviewVO> list = ss.selectList("Baking_y.review_list_title", map);
		System.out.println(list.toString());
		ss.close();
		return list;
	}
	
	// 키워드로 게시물 (아이디 검색) 으로 조회
	public static List<ReviewVO> getListId(String begin, String end, String query_) {
		Map<String, String> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);
		map.put("query_", query_);
		
		SqlSession ss = DBService.getFactory().openSession();
		List<ReviewVO> list = ss.selectList("Baking_y.review_list_id", map);
		ss.close();
		return list;
	}
	
	
	// 게시글 하나 조회 (review_idx 값으로 조회)
	public static ReviewVO getOne(String review_idx) {
		SqlSession ss = DBService.getFactory().openSession();
		ReviewVO vo = ss.selectOne("Baking_y.review_one", review_idx);
		ss.close();
		return vo;
	}
	
	// 게시물 작성 (+파일)
	public static int write(ReviewVO vo) {
		//오토커밋
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("Baking_y.write", vo);
		ss.close();
		return result;
	}
	
	// 게시물 삭제
	public static int review_delete(String review_idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("Baking_y.review_delete", review_idx);
		ss.close();
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
