package com.vasac.dao;

import com.vasac.domain.MemberVO;

public interface MemberDAO {

	
	public void insertMember(MemberVO vo); 
		
	public MemberVO selectId(MemberVO vo);
}
