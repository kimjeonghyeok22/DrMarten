package com.ezen.drmarten.repository;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jdbc.repository.query.Modifying;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ezen.drmarten.model.User;

public interface UserTableRepository extends JpaRepository<User, Object>{

	@Transactional
	@Modifying
	@Query("select count(*) from User where u_email = ?1")
	int findByu_email(String u_email);

	
	@Transactional
	@Modifying
	@Query("select u_email from User where name = ?1 and phone_num =?2")
	String findId(String name, int phone_num);

	
	@Transactional
	@Modifying
	@Query("select u_pw from User where name = ?2 and phone_num =?3 and u_email = ?1")
	String findPw(String u_email, String name, int phone_num);
	
	@Transactional
	@Modifying
	@Query("select u_pw from User where u_email = ?1")
	User findByU_email(String u_email);


	@Transactional
	@Modifying
	@Query("update User set point = point +500 where u_email = ?1")
	void updatePoint(String ses);
}