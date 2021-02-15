package com.bc.model.dao;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import com.bc.model.vo.ReservationVO;
import com.bc.mybatis.DBService;
public class ReserveDAO {

	// 예약하기-신청
	public static int addList(ReservationVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("Baking_s.addList",vo);
		ss.close();

		System.out.println(result);
		return result;
		
	}
	// 페이징
	public static int getTotalCount(String id) {
		SqlSession ss = DBService.getFactory().openSession();
		int totalCount = ss.selectOne("Baking_s.totalCount",id);
		ss.close();
		return totalCount;
	}
	
	// 글가져오기
	public static List<ReservationVO> getList(Map<String, Integer> map) {
		SqlSession ss = DBService.getFactory().openSession();
		List<ReservationVO> list = ss.selectList("Baking_s.list", map);
		ss.close();
		return list;
	}
}