package com.bc.model.dao;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import com.bc.model.vo.MemberVO;
import com.bc.mybatis.DBService;
public class MembersDAO {

	public static List<MemberVO> getList() {
		SqlSession ss = DBService.getFactory().openSession();
		List<MemberVO> list = ss.selectList("Baking_b.all");
		ss.close();

		System.out.println(list);
		return list;
		
	}
	
}
