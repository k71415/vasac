package com.vasac.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Inject
	private SqlSession sql;
	private static String namespace = "com.vasac.mappers.admin";
	
	@Override
	public List<CategoryVO> selectCategory() {
		
		return sql.selectList(namespace + ".selectCategory");
	}

	@Override
	public void insertGoods(GoodsVO vo) {
		sql.insert(namespace + ".insertGoods", vo);
		
	}

}
