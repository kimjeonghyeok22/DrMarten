package com.ezen.drmarten.service;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.drmarten.model.User;
import com.ezen.drmarten.repository.UserTableRepository;

@Service
public class UserService {

	@Autowired
	UserTableRepository rep;
	//마찬가지로서버가안돌아가서 주석처리해뒀어요
//	public String login(String u_email,String pw , HttpSession session) {
//		Optional<User> user = rep.findById(u_email);
//		User chek = user.get();
//		 if(chek != null && chek.getU_pw().equals(pw)) {
//			 session.setAttribute("u_email", u_email);
//			 System.out.println(session.getAttribute("u_email"));
//			 return "<script>" + "alert('성공');"  + "</script>";
//			 }
//		 if(chek != null && !(chek.getU_pw().equals(pw)))  
//			 return "<script>" + "alert('비밀번호 틀림 ');"  + "</script>";
//		 return "<script>" + "alert('없는 아이디 ');"  + "</script>";
//	}
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
