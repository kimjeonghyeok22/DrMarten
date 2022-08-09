package com.ezen.drmarten.service;



import java.util.ArrayList;
import java.util.List;

import com.ezen.drmarten.model.CartItemList;

public class ItemCartService {

	private List<CartItemList> cart;

	// 객체생성
	public ItemCartService() {
		this.cart = new ArrayList<>();
	}

	// 카트가져오기
	public List<CartItemList> getCart() {
		return cart;
	}

	// 카트에 물건담기
	public boolean addCartItem(CartItemList item) {

		try {
			int itemChek = getCart().indexOf(item);
			// 장바구니에아무물건도 없을떄
			if (itemChek == -1) {
				int price = item.getProductNumbers() * item.getPrice();
				item.setPrice(price);  // 물건 가격 더하기 
				this.cart.add(item);
			}
			
			// 장바구니에 같은 물건이있을떄
			int price = getCart().get(itemChek).getPrice();
			int count = getCart().get(itemChek).getProductNumbers();
			getCart().get(itemChek).setProductNumbers(count + item.getProductNumbers());
			getCart().get(itemChek).setPrice(price + (item.getPrice()*item.getProductNumbers()));
			return true;

		} catch (Exception e) {
			return false;
		}

	}

	// 카트에물건 삭제할떄
	public void removeCart(CartItemList item) throws Exception {
		int itemChek = getCart().indexOf(item);

		int items = getCart().get(itemChek).getProductNumbers();
		int itemsChek = item.getProductNumbers();
		int total = items - itemsChek;

		// 만약 물건을 모두 삭제했다면
		if (total == 0)
			getCart().remove(itemChek);
		// 만약 삭제하는것이 장바구니에 가지고있는 물건보다 많다면
		if (total < 0)
			throw new Exception(" 삭제 할 물건이 삭제하려는 것 보다 많습니다 ");
		// 만약 정상 삭제이라면
		getCart().get(itemChek).setProductNumbers(total);

	}
	
	// 총물건가격
	public int getAllPrice() {
		int allPrice = 0;

		for (int i = 0; i < this.getCart().size(); i++) {
			allPrice += this.getCart().get(i).getPrice();
		}

		return allPrice;

	}

}
