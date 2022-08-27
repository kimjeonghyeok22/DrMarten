package com.ezen.drmarten.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.jdbc.repository.query.Modifying;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ezen.drmarten.model.CartView;

public interface CartViewRepository extends JpaRepository<CartView, Object> {
	
	List<CartView> findByName(String u_email);
	List<CartView> findByEmail(String email);
	
//	@Modifying
//	@Query(value = " DELETE FROM Cart_View WHERE email = email ", nativeQuery = true)
//	void deleteByEmail(@Param("email")String email);
	
	@Transactional
	Long deleteByEmail(String email);
	

}
