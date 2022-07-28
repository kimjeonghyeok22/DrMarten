package com.ezen.drmarten.repository;

import javax.transaction.Transactional;

import org.springframework.data.jdbc.repository.query.Modifying;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ezen.drmarten.model.User;

public interface UserTableRepository extends JpaRepository<User, Object>{

	@Transactional
	@Modifying
	@Query("select count(*) from User where u_id = ?1")
	int findByU_id(String u_id);

	@Transactional
	@Modifying
	@Query("select u_id from User where name = ?1 and adress =?2")
	String findingId(String name, String adress);

	
	@Transactional
	@Modifying
	@Query("select u_pw from User where name = ?2 and adress =?3 and u_id = ?1")
	String findingPw(String u_id, String name, String adress);


	

}
