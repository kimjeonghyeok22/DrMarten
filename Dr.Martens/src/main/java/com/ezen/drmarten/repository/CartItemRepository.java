package com.ezen.drmarten.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ezen.drmarten.model.CartItemList;

public interface CartItemRepository  extends JpaRepository<CartItemList, Integer> {

}
