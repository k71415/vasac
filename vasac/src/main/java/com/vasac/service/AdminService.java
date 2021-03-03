package com.vasac.service;

import java.util.List;

import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;
import com.vasac.domain.OrderListVO;
import com.vasac.domain.OrdersVO;

public interface AdminService {
	
	//카테고리
	public List<CategoryVO> getCategory();
	//상품등록
	public void goodsReg(GoodsVO vo);
	//상품목록
	public List<GoodsVO> getGoodsList();
	//상품상세정보
	public GoodsVO goodsDetail(int gdsNum);
	//상품수정
	public void modifyGoods(GoodsVO vo);
	//상품삭제
	public void deleteGoods(int gdsNum);
	
	public List<OrdersVO> getOrderList();
	
	public List<OrderListVO> getOrderDetail(OrdersVO vo);
	
	public void modifyStatus(OrdersVO vo);
}
