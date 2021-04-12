package com.vasac.dao;

import java.util.List;

import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;
import com.vasac.domain.OrderListVO;
import com.vasac.domain.OrdersVO;
import com.vasac.domain.ReplyVO;

public interface AdminDAO {

	//카테고리 리스트
	public List<CategoryVO> selectCategory();
	//상품 등록
	public void insertGoods(GoodsVO vo);

	public List<GoodsVO> selectGoodsList();
	
	public GoodsVO selectGoods(int gdsNum);
	
	public void updateGoods(GoodsVO vo);
	
	public void deleteGoods(int gdsNum);
	
	public List<OrdersVO> selectOrderList();
	
	public List<OrderListVO> selectOrderDetail(OrdersVO vo);
	
	public void updateOrderStatus(OrdersVO vo);
	
	public List<ReplyVO> selectReplyList();
	
	public void deleteReply(int repNum);
	
	public int selectAmount();
	
	public int selectReady();
	
	public int selectDelivery();
	
	public int selectComplete();
	
	public List<GoodsVO> selectTop3();
	
	public int selectSellCount();
	
	public int selectMemCount();
	
	public int selectRepCount();
	
	
}
