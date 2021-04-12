package com.vasac.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.vasac.dao.AdminDAO;
import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;
import com.vasac.domain.OrderListVO;
import com.vasac.domain.OrdersVO;
import com.vasac.domain.ReplyVO;

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
	@Override
	public List<ReplyVO> getReplyList() {
		
		return dao.selectReplyList();
	}
	@Override
	public void deleteReply(int repNum) {
		
		dao.deleteReply(repNum);
		
	}
	@Override
	public int getAmount() {
		
		return dao.selectAmount();
	}
	@Override
	public int[] getStatus() {
		int[] status = new int[3];
		status[0] = dao.selectReady();
		status[1] = dao.selectDelivery();
		status[2] = dao.selectComplete();
		
		return status;
		
		
	}
	@Override
	public List<GoodsVO> getGoodsTop3() {
		
		return dao.selectTop3();
	}
	@Override
	public int[] getInfo() {
		int[] info = new int[3];
		info[0] = dao.selectRepCount();
		info[1] = dao.selectSellCount();
		info[2] = dao.selectMemCount();
		
		
		return info;
	}
	

}
