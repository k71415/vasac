package com.vasac.dao;

import java.util.List;

import com.vasac.domain.GoodsVO;
import com.vasac.domain.MemberVO;

public interface MemberDAO {

	
	public void insertMember(MemberVO vo); 
		
	public MemberVO selectId(MemberVO vo);
	
	
}
