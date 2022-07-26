package com.ezen.DrMartin.service;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.DrMartin.model.User;
import com.ezen.DrMartin.repository.UserTableRepository;

@Service
public class UserService {

	@Autowired
	UserTableRepository rep;
	public boolean login(String u_id, String u_pw) {
		if(rep.findById(u_id).equals(rep.findById(u_pw)))  {
			return true;
			
		}
		
		return false;
	}
	public boolean id_check(String u_id) {
		int i = rep.findByU_id(u_id);
		if(i > 0) {
			return true;
		}
		return false;
	}
	public boolean save(@Valid User user) {
		
		boolean signUp = rep.save(user) != null;
		return signUp;
	}
	public String findId(String name, String adress) {
		String ufId = rep.findingId(name,adress);
		return null;
	}
	public String findPw(String u_id, String name, String adress) {
		String ufPw = rep.findingPw(u_id,name,adress);
		return null;
	}

}
