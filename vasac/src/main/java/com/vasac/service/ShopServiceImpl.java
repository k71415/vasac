package com.vasac.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.vasac.dao.ShopDAO;
import com.vasac.domain.CartVO;
import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;
import com.vasac.domain.OrderDetailVO;
import com.vasac.domain.OrderListVO;
import com.vasac.domain.OrdersVO;
import com.vasac.domain.ReplyVO;

@Service
public class ShopServiceImpl implements ShopService {
	
	@Inject
	private ShopDAO dao;

	@Override
	public ArrayList<GoodsVO> indexGoodsList() {
		ArrayList<GoodsVO> list = new ArrayList<GoodsVO>() ; 
		list.addAll(dao.selectBestGoods());
		list.addAll(dao.selectNewGoods());
		
		return list;
	}

	@Override
	public List<CategoryVO> getCategory() {
		
		return dao.selectCategory();
	}

	@Override
	public List<GoodsVO> getGoodsList(int cateCode) {
		
		return dao.selectGoodsList(cateCode);
	}

	@Override
	public GoodsVO getGoods(int gdsNum) {
		
		return dao.selectGoods(gdsNum);
	}

	@Override
	public void addCart(CartVO vo) {
		dao.insertCart(vo);
		
	}

	@Override
	public List<CartVO> getCartList(String userId) {
		
		return dao.selectCartList(userId);
	}

	@Override
	public List<CategoryVO> getCateList(int cateCodeRef) {
		
		return dao.selectCateList(cateCodeRef);
	}

	@Override
	public void removeCart(int cartNum) {
		dao.deleteCart(cartNum);
		
	}

	@Override
	public void orderInfo(OrdersVO vo) {
		
		dao.insertOrder(vo);
		
	}

	@Override
	public void orderDetailInfo(OrderDetailVO vo) {
		
		dao.insertOrderDetail(vo);
		
	}

	@Override
	public void removeAllCart(String userId) {
		
		dao.deleteAllCart(userId);
		
	}

	@Override
	public List<OrdersVO> getOrder(String userId) {
		
		return dao.selectOrder(userId);
	}

	@Override
	public List<OrderListVO> getOrderList(OrdersVO vo) {
		
		return dao.selectOrderList(vo);
	}

	@Override
	public void minusStock(GoodsVO vo) {
		
		dao.updateGoodsStock(vo);
		
	}

	@Override
	public void plusSell(GoodsVO vo) {
		
		dao.updateGoodsSell(vo);
		
	}

	@Override
	public void writeReply(ReplyVO vo) {
		
		dao.insertReply(vo);
		
	}

	@Override
	public List<ReplyVO> readReply(int gdsNum) {
		
		return dao.selectReply(gdsNum);
	}

	@Override
	public void modifyReply(ReplyVO vo) {
		
		dao.updateReply(vo);
		
	}

	@Override
	public void deleteReply(int repNum) {
		
		dao.deleteReply(repNum);
		
	}
	
}
