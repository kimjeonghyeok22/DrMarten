package com.ezen.drmarten.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.ezen.drmarten.model.CartItemList;
import com.ezen.drmarten.model.Product;
import com.ezen.drmarten.service.ItemCartService;

@Controller
@RequestMapping("/cart/")
public class CartController {

	@GetMapping("getmycart") // 내가지금 무슨 물건을 카트에 담았는지 보는 페이지
	public String getMyCart(@SessionAttribute(name = "u_cart", required = false) ItemCartService svc, Model model) {

		if (svc == null) {
			model.addAttribute("Cart", null);
			return "CartPage";
		}
		model.addAttribute("Cart", svc.getCart());
		return "CartPage";
	}

	@PostMapping("cartAdd")
	@ResponseBody
	// 장바니에 담기를 위한 메소드 장바구니가 어떤형식으로 진행되는지 파악 후 작업 가능.
	public String cartAdd(Product pro, @RequestParam("number") int count, @RequestParam("sized") int size,
			@SessionAttribute(name = "u_eamil", required = false) String eamil,
			@SessionAttribute(name = "u_cart", required = false) ItemCartService svc) {

		if (eamil == null && svc == null) {
			String script = "<script>" + "alert('로그인을 먼저해주세요');" + "location.href='/user/login'" + "</script>";
			return script;
		}
		CartItemList item = new CartItemList();
		item.setProductCood(pro.getProduct_code());
		item.setProductName(pro.getName());
		item.setProductNumbers(count);
		item.setProductSize(size);
		item.setPrice(pro.getPrice());

		// 값을 저장후에 불리언값 오류나거나 저장 실패시 false
		boolean addChek = svc.addCartItem(item);
		return "{\" addChek\":" + addChek + "}";
	}

}
