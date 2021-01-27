package com.vasac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	//admin 홈
	@RequestMapping("/admin/index")
	public String adminindex() {
		
		return "admin/index";
	}
	//상품등록
	@RequestMapping("/admin/reg")
	public String reg() {
		
		return "admin/reg";
	}
}
