package com.vasac.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.vasac.dao.MemberDAO;
import com.vasac.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

@Inject
private MemberDAO dao;
	
	//회원가입
	@Override
	public void account(MemberVO vo) {	
		dao.account(vo);

	}
	//로그인
	@Override
	public MemberVO login(MemberVO vo) {
	
		return dao.login(vo);
	}

}
