package com.vasac.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.vasac.domain.MemberVO;

@Repository
public class MermberDAOImpl implements MemberDAO {
	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.vasac.mappers.member";
	
	//회원가입
	@Override
	public void account(MemberVO vo) {
		
		sql.insert(namespace + ".account", vo);
		
	}
	//로그인
	@Override
	public MemberVO login(MemberVO vo) {
	
		return sql.selectOne(namespace + ".login", vo);
	}
	
	
}
