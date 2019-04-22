package com.jbc.analyst_pjt.analyst.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jbc.analyst_pjt.analyst.vo.AnalystVO;

@Repository
public class AnalystDAO {

	@Autowired
	private SqlSession sqlSession;
	
	// 1. 전체 개수 구하기
	public int selectCount() {
		return sqlSession.selectOne("mybatis.analyst.selectCount");
	}
	
	// 2. 1개 구하기
	public AnalystVO selectByAnalystCode(int analystCode) {
		return sqlSession.selectOne("mybatis.analyst.selectByAnalystCode", analystCode);
	}
	
	// 3. 1페이지 구하기
	public List<AnalystVO> selectList(HashMap<String, Integer> map){
		return sqlSession.selectList("mybatis.analyst.selectList", map);
	}
	
	// 4. 저장
	public void insert(AnalystVO vo) {
		sqlSession.insert("mybatis.analyst.insert", vo);
	}
	
	// 5. 수정
	public void update(AnalystVO vo) {
		sqlSession.update("mybatis.analyst.update", vo);
	}
	
	// 6. 삭제
	public void delete(int analystCode) {
		sqlSession.delete("mybatis.analyst.delete", analystCode);
	}	
	public int searchCount(String searchField, String searchText) {
		HashMap<String, String> map = new HashMap<String, String>();
		return sqlSession.selectOne("mybatis.analyst.searchCount", map);
	}
	//검색 결과
	public List<AnalystVO> searchList(int startNo, int endNo, String searchField, String searchText) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startNo", startNo);
		map.put("endNo", endNo);
		map.put("searchField", searchField);
		map.put("searchText", searchText);
		return sqlSession.selectList("mybatis.analyst.searchList", map);
	}
}
