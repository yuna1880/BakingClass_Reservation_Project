package com.bc.model.dao;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import com.bc.model.vo.MemberVO;
import com.bc.mybatis.DBService;
public class DAO {
	
	//테스트용
	public static List<MemberVO> getList() {
		SqlSession ss = DBService.getFactory().openSession();
		List<MemberVO> list = ss.selectList("Baking_y.all");
		ss.close();

		System.out.println(list);
		return list;
	}
	
	//회원가입
	public static int insert(MemberVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("Baking_y.join");
		ss.close();

		System.out.println(result);
		return result;
	}
	
}
