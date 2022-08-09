package com.ezen.drmarten.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ezen.drmarten.model.Cart;

public interface CartRepository  extends JpaRepository<Cart, Integer> {

}