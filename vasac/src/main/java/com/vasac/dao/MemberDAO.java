package com.vasac.dao;

import com.vasac.domain.MemberVO;

public interface MemberDAO {

	
	public void account(MemberVO vo); 
		
	public MemberVO login(MemberVO vo);
}
