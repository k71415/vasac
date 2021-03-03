package com.vasac.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;
import com.vasac.domain.OrderListVO;
import com.vasac.domain.OrdersVO;

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

	@Override
	public List<GoodsVO> selectGoodsList() {
		
		return sql.selectList(namespace + ".selectGoodsList");
	}

	@Override
	public GoodsVO selectGoods(int gdsNum) {
		
		return sql.selectOne(namespace + ".selectGoods", gdsNum );
	}
	
	public void updateGoods(GoodsVO vo) {
		sql.update(namespace + ".updateGoods", vo);
	}

	@Override
	public void deleteGoods(int gdsNum) {
		sql.delete(namespace + ".deleteGoods", gdsNum);
		
	}

	@Override
	public List<OrdersVO> selectOrderList() {
		
		return sql.selectList(namespace + ".selectOrderList");
	}

	@Override
	public List<OrderListVO> selectOrderDetail(OrdersVO vo) {
		
		return sql.selectList(namespace + ".selectOrderDetail", vo);
	}

	@Override
	public void updateOrderStatus(OrdersVO vo) {
		sql.update(namespace + ".updateOrderStatus", vo);
		
	}
	
	

}
