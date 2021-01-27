package com.vasac.service;

import com.vasac.domain.MemberVO;

public interface MemberService {
	
	public void account(MemberVO vo);
	
	public MemberVO login(MemberVO vo);
}
