package com.vasac.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;
import com.vasac.domain.OrderListVO;
import com.vasac.domain.OrdersVO;
import com.vasac.domain.ReplyVO;

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

	@Override
	public List<ReplyVO> selectReplyList() {
		
		return sql.selectList(namespace + ".selectReplyList");
	}

	@Override
	public void deleteReply(int repNum) {
		
		sql.delete(namespace + ".deleteReply", repNum);
		
	}

	@Override
	public int selectAmount() {
		
		return sql.selectOne(namespace + ".selectAmount");
	}

	@Override
	public int selectReady() {
		
		return sql.selectOne(namespace + ".selectReady");
	}

	@Override
	public int selectDelivery() {
		
		return sql.selectOne(namespace + ".selectDelivery");
	}

	@Override
	public int selectComplete() {
		
		return sql.selectOne(namespace + ".selectComplete");
	}

	@Override
	public List<GoodsVO> selectTop3() {
		
		return sql.selectList(namespace + ".selectTop3");

	}

	@Override
	public int selectSellCount() {
		
		return sql.selectOne(namespace + ".selectSellCount");
	}

	@Override
	public int selectMemCount() {
		
		return sql.selectOne(namespace + ".selectMemCount");
	}

	@Override
	public int selectRepCount() {
		
		return sql.selectOne(namespace + ".selectRepCount");
	}
	
	
}
