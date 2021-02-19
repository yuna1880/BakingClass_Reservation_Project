package com.bc.model.dao;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import com.bc.model.vo.ClsVO;
import com.bc.model.vo.MemberVO;
import com.bc.mybatis.DBService;
public class ProductDAO {
	
	// 클래스목록
	public static List<ClsVO> getList() {
		SqlSession ss = DBService.getFactory().openSession();
		System.out.println("DAO 시작");
		List<ClsVO> list = ss.selectList("Baking_b.list");
		
		System.out.println("list~~~~~~~~~~"+list);
		ss.close();
		
		return list;
	}
	

	// 클래스 상세
	public static ClsVO selectOne(String cls_idx) {
		SqlSession ss = DBService.getFactory().openSession();
		System.out.println("sdsd"+cls_idx);
		
		ClsVO vo = ss.selectOne("Baking_b.one", cls_idx);
		ss.close();

		System.out.println(vo);
		
		return vo;
		
	}
	
	//조인
	public static ClsVO selectJoin(String cls_idx) {
		SqlSession ss = DBService.getFactory().openSession();
		ClsVO vo = ss.selectOne("Baking_b.name", cls_idx);
		ss.close();

		System.out.println(vo);
		
		return vo;
		
	}
	
}
