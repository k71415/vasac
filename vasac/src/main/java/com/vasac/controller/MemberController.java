package com.vasac.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.vasac.domain.MemberVO;
import com.vasac.service.MemberService;

@Controller
public class MemberController {
	@Inject
	private MemberService service;
	

	
	//회원가입 폼
	@RequestMapping(value="/account", method=RequestMethod.GET)
	public String accountForm() {
		
		return "/customer/account";
	}
	
	//회원가입
	@RequestMapping(value="/account", method=RequestMethod.POST)
	public String account(MemberVO vo, RedirectAttributes rttr) {
		
		service.account(vo);
		
		rttr.addFlashAttribute("msg", "ok");
		
		return "redirect:/";
	}
	
	//아이디 중복검사
	@ResponseBody
	@RequestMapping(value="/account/idck", method=RequestMethod.POST)
	public int idck(MemberVO vo) {
		System.out.println(vo.getUserId());
		int result = service.idCk(vo);	
		return result;
	}
	
	//로그인 폼
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginForm() {
		
		return "/customer/login";
	}
	
	
	//로그인
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session, Model model, RedirectAttributes rttr) {
		
		int result;
		MemberVO member = service.login(vo);
			

		if(member != null ) {
			session.setAttribute("member", member);
			if(member.getVerify() == 0)
					return "redirect:/";
				else
					return "redirect:/admin/index";
		}
		
		else 
			result = 1;
			rttr.addFlashAttribute("msg", result);
			return "redirect:/login";
	
	}
	
	//로그아웃
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
}
