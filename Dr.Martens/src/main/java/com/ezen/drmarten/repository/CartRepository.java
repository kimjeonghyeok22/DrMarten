package com.ezen.drmarten.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.jdbc.repository.query.Modifying;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ezen.drmarten.model.Cart;

public interface CartRepository extends JpaRepository<Cart, Object> {
	
	List<Cart> findByName(String u_email);
	List<Cart> findByEmail(String email);
	@Transactional
	Long deleteByEmail(String email);
	

}
