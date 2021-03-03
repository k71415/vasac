package com.vasac.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.vasac.dao.AdminDAO;
import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;
import com.vasac.domain.OrderListVO;
import com.vasac.domain.OrdersVO;

@Service
public class AdminServiceImpl implements AdminService {
	@Inject
	private AdminDAO dao;
	@Override
	public List<CategoryVO> getCategory() {
		
		return dao.selectCategory();
	}
	@Override
	public void goodsReg(GoodsVO vo) {
		
		dao.insertGoods(vo);
		
	}
	@Override
	public List<GoodsVO> getGoodsList() {
		
		return dao.selectGoodsList();
	}
	@Override
	public GoodsVO goodsDetail(int gdsNum) {
		
		return dao.selectGoods(gdsNum);
	}
	@Override
	public void modifyGoods(GoodsVO vo) {
		dao.updateGoods(vo);
		
	}
	@Override
	public void deleteGoods(int gdsNum) {
		dao.deleteGoods(gdsNum);
		
	}
	@Override
	public List<OrdersVO> getOrderList() {
		
		return dao.selectOrderList();
	}
	@Override
	public List<OrderListVO> getOrderDetail(OrdersVO vo) {
		
		return dao.selectOrderDetail(vo);
	}
	@Override
	public void modifyStatus(OrdersVO vo) {
		dao.updateOrderStatus(vo);
		
	}
	

}
