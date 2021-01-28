package com.vasac.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.vasac.dao.AdminDAO;
import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;

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

}
