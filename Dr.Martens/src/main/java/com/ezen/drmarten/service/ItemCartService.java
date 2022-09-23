package com.ezen.drmarten.service;

import java.util.ArrayList;
import java.util.List;

import com.ezen.drmarten.model.Cart;

public class ItemCartService {

	private List<Cart> cart;

	// 객체생성
	public ItemCartService() {
		this.cart = new ArrayList<>();
	}

	// 카트가져오기
	public List<Cart> getCart() {
		return this.cart;
	}
	
	//만약 데이터베이스에 자기의 데이터가있다면 카트 저장해주는 메서드
	public void setCart(List<Cart> cart) {
		this.cart = cart;
	}

	// 카트에 물건담기
	public boolean addCartItem(Cart cart) {

		try {

			int itemChek = getCart().indexOf(cart);
			// 장바구니에아무물건도 없을떄

			// 만약 할인률이 0% 이면 에러 예외처리
			// 현지 : 할인율이 100이어서 0으로 나눌일 없으니 예외처리 안하셔도 괜찮습니다 코드 주석처리해둘게요
			/*if (cart.getDiscount() == 0)
				cart.setDiscount(cart.getPrice());*/

			if (itemChek == -1) {
				//희범씨가 작성한 코드
				/*int price = cart.getProduct_count() * (cart.getPrice() - (cart.getPrice() / cart.getDiscount()));
				 * cart.setDiscounted_price(price);
				 * */
				
				int dc_price = cart.getPrice() * (100 - cart.getDiscount()) / 100;
				
				cart.setDiscounted_price(dc_price);
				cart.setTotal_price(dc_price * cart.getProduct_count());
				boolean cartchak = this.cart.add(cart);
				System.out.println(" 성공 "+cartchak);
				return cartchak;

			} else {

				
				int discounted_price = getCart().get(itemChek).getDiscounted_price();
				int count = getCart().get(itemChek).getProduct_count() + cart.getProduct_count();
				getCart().get(itemChek).setProduct_count(count);
				getCart().get(itemChek).setTotal_price(discounted_price * count);
				System.out.println(" 성공 " );
				return true;

			}

		} catch (Exception e) {
			System.out.println(" 오류 ");
			e.printStackTrace();
			return false;
		}

	}

	
	// 카트에물건 삭제할떄
	public boolean removeCart(Cart cart) {

		int itemChek = getCart().indexOf(cart);
		if (itemChek == -1)
			return false;
		this.cart.remove(itemChek);
		return true;

	}
	
	
	
	

	// 총물건가격
	public int getAllPrice() {
		int allPrice = 0;
		for (int i = 0; i < this.getCart().size(); i++) {
			allPrice += this.getCart().get(i).getDiscounted_price();
		}
		return allPrice;
	}

}
