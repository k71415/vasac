package com.vasac.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;
import com.vasac.domain.OrderListVO;
import com.vasac.domain.OrdersVO;
import com.vasac.service.AdminService;
import com.vasac.utils.UploadFileUtils;

import net.sf.json.JSONArray;

@Controller
public class AdminController {
	
	@Inject
	private AdminService service;
	@Resource(name="uploadPath")
	private String uploadPath;
	
	//admin 홈
	@RequestMapping("/admin/index")
	public String adminIndex() {
		
		return "admin/index";
	}
	

	 
	//상품등록 폼
	@RequestMapping(value = "/admin/goodsReg", method=RequestMethod.GET)
	public String goodsRegForm(Model model) {
		List<CategoryVO> category = service.getCategory();
		
		model.addAttribute("category", JSONArray.fromObject(category));
		return "admin/goodsReg";
	}
	
	
	 //상품등록
	  
	 @RequestMapping(value = "/admin/goodsReg", method=RequestMethod.POST) 
	 public String goodsReg(GoodsVO vo, MultipartFile file) throws IOException, Exception { 
		 String imgUploadPath = uploadPath + File.separator + "imgUpload";
		 String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		 String fileName = null;
		 if(file != null) {
		  fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		 } else {
		  fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		 }

		 vo.setGdsImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		 vo.setGdsThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		 service.goodsReg(vo);
		 return "redirect:/admin/goodsList";
	 }
	 
	 //상품목록
	 
	 @RequestMapping("/admin/goodsList")
	 public void goodsList(Model model) {
		 List<GoodsVO> goods = service.getGoodsList();
		 
		 model.addAttribute("goods", goods);
	 }
	 
	 //상품상세보기
	 
	 @RequestMapping("/admin/goodsDetail")
	 public void goodsDetail(int gdsNum, Model model) {		
		 GoodsVO goods = service.goodsDetail(gdsNum);
		 model.addAttribute("goods", goods);
	 }
	 
	 //상품수정폼
	 
	 @RequestMapping(value = "/admin/goodsModifyForm", method = RequestMethod.GET)
	 public void goodsModifyForm(int gdsNum, Model model) {
		 GoodsVO goods = service.goodsDetail(gdsNum);
//		 List<CategoryVO> category = service.getCategory();
//		 model.addAttribute("category", category);                 나중에 구현하자 js배우고
		 model.addAttribute("goods", goods);
	 }
	 
	 //상품수정
	 @RequestMapping(value = "/admin/goodsModify", method=RequestMethod.POST) 
	 public String goodsModify(GoodsVO vo, MultipartFile file, HttpServletRequest req) throws IOException, Exception { 
		 // 새로운 파일이 등록되었는지 확인
		 if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
		  // 기존 파일을 삭제
		  new File(uploadPath + req.getParameter("gdsImg")).delete();
		  new File(uploadPath + req.getParameter("gdsThumbImg")).delete();
		  
		  // 새로 첨부한 파일을 등록
		  String imgUploadPath = uploadPath + File.separator + "imgUpload";
		  String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		  String fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		  
		  vo.setGdsImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		  vo.setGdsThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		  
		 } else {  // 새로운 파일이 등록되지 않았다면
		  // 기존 이미지를 그대로 사용
		  vo.setGdsImg(req.getParameter("gdsImg"));
		  vo.setGdsThumbImg(req.getParameter("gdsThumbImg"));
		  
		 }
		 
		 service.modifyGoods(vo);
		
		 return "redirect:/admin/goodsList";
	 }
	 
	 //상품삭제
	 @RequestMapping("/admin/goodsDelete")
	 public String goodsDelete(int gdsNum) {
		 service.deleteGoods(gdsNum);
		 
		 return "redirect:/admin/goodsList";
	 }
	 
	 @RequestMapping("/admin/orderList")
	 public String orderList(Model model) {
		 List<OrdersVO> orderList = service.getOrderList();
		 model.addAttribute("order", orderList);
		 return "admin/orderList";
	 }
	 
	 @RequestMapping(value = "/admin/orderDetail", method= RequestMethod.GET)
	 public String orderDetail(String orderId, OrdersVO vo, Model model) {
		 vo.setOrderId(orderId);
		 List<OrderListVO> orderDetail = service.getOrderDetail(vo);
		 model.addAttribute("order", orderDetail);
		 return "admin/orderDetail";
	 }
	 
	 @RequestMapping(value = "/admin/orderDetail", method= RequestMethod.POST)
	 public String delivery(OrdersVO vo) {
		 service.modifyStatus(vo);
		 
		 return "redirect:/admin/orderList";
	 }
	 

	 

	 

	 
	 
	 
}
