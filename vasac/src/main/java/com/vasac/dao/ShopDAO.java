package com.vasac.dao;

import java.util.List;

import com.vasac.domain.CartVO;
import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;
import com.vasac.domain.OrderDetailVO;
import com.vasac.domain.OrderListVO;
import com.vasac.domain.OrdersVO;
import com.vasac.domain.ReplyVO;

public interface ShopDAO {

	public List<GoodsVO> selectBestGoods();
	
	public List<GoodsVO> selectNewGoods();
	
	public List<CategoryVO> selectCategory();
	
	public List<GoodsVO> selectGoodsList(int cateCode);
	
	public List<CategoryVO> selectCateList(int cateCodeRef);
	
	public GoodsVO selectGoods(int gdsNum);
	
	public void insertCart(CartVO vo);
	
	public List<CartVO> selectCartList(String userId);
	
	public void deleteCart(int cartNum);
	
	public void deleteAllCart(String userId);
	
	public void insertOrder(OrdersVO vo);
	
	public void insertOrderDetail(OrderDetailVO vo);
	
	public List<OrdersVO> selectOrder(String userId);
	
	public List<OrderListVO> selectOrderList(OrdersVO vo);
	
	public void updateGoodsStock(GoodsVO vo);
	
	public void updateGoodsSell(GoodsVO vo);
	
	public void insertReply(ReplyVO vo);
	
	public List<ReplyVO> selectReply(int gdsNum);
	
	public void updateReply(ReplyVO vo);
	
	public void deleteReply(int repNum);
}
