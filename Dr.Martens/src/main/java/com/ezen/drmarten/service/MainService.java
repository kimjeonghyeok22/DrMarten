package com.ezen.drmarten.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class MainService {
	
	public List <String>  categoryBtnForQna(String category) {
		String [] arr = {"전체","회원정보관련", "주문결제","배송안내", "주문취소", "교환/반품/환불","상품관련","포인트 및 이벤트", "기타","AS"};
		List <String> btnlist = new ArrayList<>();
		if(category.equals("교환•반품•환불")) category = arr[5];
		String startOn = "<div class=\"category_btn on\">";
		String start = "<div class=\"category_btn\">";
		String end = "</div>";
		for(int i = 0; i<arr.length; i++) {
			if(arr[i].equals(category)) {
				if(arr[i].equals("주문취소")) {
					btnlist.add(startOn + arr[i] + end+"<br>");
				} else {
					btnlist.add(startOn + arr[i] + end);
				}
			} else {
				if(arr[i].equals("주문취소")) {
					btnlist.add(start + arr[i] + end+"<br>");
				} else {
					btnlist.add(start + arr[i] + end);
				}
			}
		}
		return btnlist;
	}
}
