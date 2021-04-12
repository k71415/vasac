package com.vasac.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.vasac.domain.CartVO;
import com.vasac.domain.CategoryVO;
import com.vasac.domain.GoodsVO;
import com.vasac.domain.MemberVO;
import com.vasac.domain.OrderDetailVO;
import com.vasac.domain.OrderListVO;
import com.vasac.domain.OrdersVO;
import com.vasac.domain.ReplyVO;
import com.vasac.service.ShopService;

@Controller
public class ShopController {
	@Inject
	private ShopService service;
	
	//홈
	@RequestMapping("/")
	public String index(Model model) {
		ArrayList<GoodsVO> list = service.indexGoodsList();

		model.addAttribute("list", list);
		
		return "customer/index";
	}
	
	@RequestMapping("/product")
	public String product(Model model, @RequestParam int c, @RequestParam int r) {
		List<GoodsVO> goods = service.getGoodsList(c);
		List<CategoryVO> category = service.getCateList(r);
		model.addAttribute("goods", goods);
		model.addAttribute("category", category);
		return "customer/product";
	}
	
	@RequestMapping("/product-detail")
	public String productDetail(Model model, int gdsNum) {
		GoodsVO goods = service.getGoods(gdsNum);	
		model.addAttribute("goods", goods);
		return "customer/product-detail";
	}
	
	@RequestMapping("/product/addCart")
	public String addCart(int gdsNum, CartVO vo, HttpSession session,RedirectAttributes rttr) {		 
		MemberVO member = (MemberVO) session.getAttribute("member");
		if(member == null) {
			int result = 2;
			rttr.addFlashAttribute("msg", result );
			return "redirect:/login"; 
		}
		
		vo.setUserId(member.getUserId());
		service.addCart(vo);
		return "redirect:/";
	}
	
	@RequestMapping("/product/deleteCart")
	public String deleteCart(int cartNum) {
		
		service.removeCart(cartNum);
		
		return "redirect:/product/cart";
	}
	
	@RequestMapping(value = "/product/cart", method = RequestMethod.GET)
	public String cartList(HttpSession session, Model model ) { 
		MemberVO member = (MemberVO) session.getAttribute("member");
		
		
		List<CartVO> cartList = service.getCartList(member.getUserId());
		
		model.addAttribute("cartList", cartList);
		return "customer/cart";
	}
	
	
	@RequestMapping(value = "/product/cart", method = RequestMethod.POST)
	public String order(HttpSession session, OrdersVO order, OrderDetailVO vo, @RequestParam int[] gdsNum, @RequestParam int[] cartStock) {
		MemberVO member = (MemberVO)session.getAttribute("member");
		String userId = member.getUserId();
			
		  Calendar cal = Calendar.getInstance(); int year = cal.get(Calendar.YEAR);
		  String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) +
		  1); String ymd = ym + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		  String subNum = "";
		  
		  for(int i = 1; i <= 6; i ++) { subNum += (int)(Math.random() * 10); }
		  
		  String orderId = ymd + "_" + subNum;
		  
		  order.setOrderId(orderId); 
		  order.setUserId(userId);
		  
		  service.orderInfo(order);
		  
		  vo.setOrderId(orderId); 
		  service.orderDetailInfo(vo);
		  
		  service.removeAllCart(userId);
		  
		  GoodsVO goods = new GoodsVO();
		  
		  for(int i=0; i<gdsNum.length; i++) {
	

			  goods.setGdsNum(gdsNum[i]); 
			  goods.setGdsStock(cartStock[i]);
				  
			  service.minusStock(goods);
			  service.plusSell(goods);
				
		  }
		 
		
		return "redirect:/order";
	}
	
	@RequestMapping("/order")
	public String viewOrder(HttpSession session, Model model, RedirectAttributes rttr) {
		MemberVO member = (MemberVO)session.getAttribute("member");
		if(member == null) {
			int result = 2;
			rttr.addFlashAttribute("msg", result );
			return "redirect:/login"; 
		}
		
		String userId = member.getUserId();
		
		List<OrdersVO> order = service.getOrder(userId);
		model.addAttribute("orderList", order);
		return "customer/order";
	}
	
	@RequestMapping("/order-detail")
	public String orderDetail(HttpSession session, Model model, String orderId, OrdersVO vo) {
		MemberVO member = (MemberVO)session.getAttribute("member");
		vo.setUserId(member.getUserId());
		vo.setOrderId(orderId);
		
		List<OrderListVO> orderList = service.getOrderList(vo);		
		model.addAttribute("orderList", orderList);
		return "customer/order-detail";
	}
	
	@ResponseBody
	@RequestMapping(value = "/product-detail/addreply", method = RequestMethod.POST)
	public void addReply(HttpSession session, ReplyVO vo) {
		System.out.println(vo.getRepCon());
		MemberVO member = (MemberVO)session.getAttribute("member");
		vo.setUserId(member.getUserId());
		
		service.writeReply(vo);

		
	}
	@ResponseBody
	@RequestMapping(value = "/product-detail/replyList", method = RequestMethod.GET)
	public List<ReplyVO> replyList(int gdsNum) { 
		List<ReplyVO> reply = service.readReply(gdsNum);	
		return reply;
	}
	
	@ResponseBody
	@RequestMapping(value = "/product-detail/modifyreply", method = RequestMethod.POST)
	public void modifyReply(ReplyVO vo) {
		System.out.println(vo.getRepCon());
		System.out.println(vo.getRepNum());
		service.modifyReply(vo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/product-detail/deleteReply", method = RequestMethod.POST)
	public void deleteReply(int repNum) {
		service.deleteReply(repNum);
	}
}
