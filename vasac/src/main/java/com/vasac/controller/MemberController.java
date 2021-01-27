package com.vasac.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vasac.domain.MemberVO;
import com.vasac.service.MemberService;

@Controller
public class MemberController {
	@Inject
	private MemberService service;
	
	//customer 홈
	@RequestMapping("/")
	public String index() {
		
		return "customer/index";
	}
	
	//회원가입 폼
	@RequestMapping(value="/account", method=RequestMethod.GET)
	public String accountForm() {
		
		return "/customer/account";
	}
	
	//회원가입
	@RequestMapping(value="/account", method=RequestMethod.POST)
	public String account(MemberVO vo) {
	
		service.account(vo);
		
		return "redirect:/";
	}
	
	//로그인 폼
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginForm() {
		
		return "/customer/login";
	}
	
	//로그인
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session) {
		

		MemberVO member = service.login(vo);

		
			
		if(member != null ) {
			session.setAttribute("member", member);
			if(member.getVerify() == 0)
					return "redirect:/";
				else
					return "redirect:/admin/index";
		}
		
		else 
			return "redirect:/";
	
	}
	
	//로그아웃
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
}
