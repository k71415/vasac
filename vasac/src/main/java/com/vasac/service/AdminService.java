package com.vasac.service;

import java.util.List;

import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;

public interface AdminService {
	
	//카테고리
	public List<CategoryVO> getCategory();
	//상품등록
	public void goodsReg(GoodsVO vo);
}
