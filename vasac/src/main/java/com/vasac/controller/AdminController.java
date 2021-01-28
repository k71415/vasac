package com.vasac.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;
import com.vasac.service.AdminService;

@Controller
public class AdminController {
	
	@Inject
	private AdminService service;
	
	//admin 홈
	@RequestMapping("/admin/index")
	public String adminIndex() {
		
		return "admin/index";
	}
	//상품등록 폼
	@RequestMapping(value = "/admin/goodsReg", method=RequestMethod.GET)
	public String goodsRegForm(Model model) {
		List<CategoryVO> category = service.getCategory();
		
		model.addAttribute("category", category);
		return "admin/goodsReg";
	}
	
	
	 //상품등록
	  
	 @RequestMapping(value = "/admin/goodsReg", method=RequestMethod.POST) 
	 public String goodsReg(GoodsVO vo) { 
		 System.out.println(vo.getGdsName());
		 service.goodsReg(vo);
		 return "admin/index";
	 }
	 
	 @RequestMapping("/admin/goodsList")
	 public String goods() {
		 return "admin/goodsList";
	 }
	 
	 
	 
}
