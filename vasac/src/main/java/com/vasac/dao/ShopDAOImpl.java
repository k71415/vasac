package com.vasac.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.vasac.domain.CartVO;
import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;
import com.vasac.domain.OrderDetailVO;
import com.vasac.domain.OrderListVO;
import com.vasac.domain.OrdersVO;
import com.vasac.domain.ReplyVO;

@Repository
public class ShopDAOImpl implements ShopDAO {
	@Inject
	private SqlSession sql;
	private static String namespace = "com.vasac.mappers.shop";
	@Override
	public List<GoodsVO> selectBestGoods() {
		
		return sql.selectList(namespace + ".selectBestGoods");
	}
	@Override
	public List<GoodsVO> selectNewGoods() {
		
		return sql.selectList(namespace + ".selectNewGoods");
	}
	@Override
	public List<CategoryVO> selectCategory() {
		
		return sql.selectList(namespace + ".selectCategory");
	}
	@Override
	public List<GoodsVO> selectGoodsList(int cateCode) {
		
		return sql.selectList(namespace + ".selectGoodsList", cateCode);
	}
	@Override
	public List<CategoryVO> selectCateList(int cateCodeRef) {
		
		return sql.selectList(namespace + ".selectCateList", cateCodeRef);
	}
	@Override
	public GoodsVO selectGoods(int gdsNum) {
		
		return sql.selectOne(namespace + ".selectGoods", gdsNum );
	}
	@Override
	public void insertCart(CartVO vo) {
		sql.insert(namespace + ".insertCart", vo);
		
	}
	@Override
	public List<CartVO> selectCartList(String userId) {
		
		return sql.selectList(namespace + ".selectCartList", userId);
	}
	@Override
	public void deleteCart(int cartNum) {
		
		sql.delete(namespace + ".deleteCart", cartNum);
		
	}
	@Override
	public void insertOrder(OrdersVO vo) {
		
		sql.insert(namespace + ".insertOrder", vo);
		
	}
	@Override
	public void insertOrderDetail(OrderDetailVO vo) {
		
		sql.insert(namespace + ".insertOrderDetails", vo);
		
	}
	@Override
	public void deleteAllCart(String userId) {
		
		sql.delete(namespace + ".deleteAllCart", userId);
		
	}
	@Override
	public List<OrdersVO> selectOrder(String userId) {
		
		return sql.selectList(namespace + ".selectOrder", userId);
	}
	@Override
	public List<OrderListVO> selectOrderList(OrdersVO vo) {
		
		return sql.selectList(namespace + ".selectOrderDetail", vo);
	}
	@Override
	public void updateGoodsStock(GoodsVO vo) {
		
		sql.update(namespace + ".updateGoodsStock", vo);
		
		
	}
	@Override
	public void updateGoodsSell(GoodsVO vo) {
		
		sql.update(namespace + ".updateGoodsSell", vo);
		
	}
	@Override
	public void insertReply(ReplyVO vo) {
		
		sql.insert(namespace + ".insertReply", vo);
		
	}
	@Override
	public List<ReplyVO> selectReply(int gdsNum) {
		
		return sql.selectList(namespace + ".selectReply", gdsNum);
		
	}

	
	
	
	
}
