package com.vasac.service;

import java.util.ArrayList;
import java.util.List;

import com.vasac.domain.CartVO;
import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;
import com.vasac.domain.OrderDetailVO;
import com.vasac.domain.OrderListVO;
import com.vasac.domain.OrdersVO;
import com.vasac.domain.ReplyVO;

public interface ShopService {
	public ArrayList<GoodsVO> indexGoodsList();
	
	public List<CategoryVO> getCategory();
	
	public List<GoodsVO> getGoodsList(int cateCode);
	
	public List<CategoryVO> getCateList(int cateCodeRef);	

	public GoodsVO getGoods(int gdsNum);

	public void addCart(CartVO vo);
	
	public List<CartVO> getCartList(String userId);
	
	public void removeCart(int cartNum);
	
	public void removeAllCart(String userId);
	
	public void orderInfo(OrdersVO vo);
	
	public void orderDetailInfo(OrderDetailVO vo);
	
	public List<OrdersVO> getOrder(String userId);
	
	public List<OrderListVO> getOrderList(OrdersVO vo);
	
	public void minusStock(GoodsVO vo);
	
	public void plusSell(GoodsVO vo);
	
	public void writeReply(ReplyVO vo);
	
	public List<ReplyVO> readReply(int gdsNum);
}
