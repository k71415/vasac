package com.vasac.dao;

import java.util.List;

import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;

public interface AdminDAO {

	//카테고리 리스트
	public List<CategoryVO> selectCategory();
	//상품 등록
	public void insertGoods(GoodsVO vo);
}
