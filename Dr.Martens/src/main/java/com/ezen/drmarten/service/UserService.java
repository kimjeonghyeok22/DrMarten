package com.ezen.drmarten.service;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.drmarten.model.Cart;
import com.ezen.drmarten.model.User;
import com.ezen.drmarten.repository.CartRepository;
import com.ezen.drmarten.repository.UserTableRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UserService {

	@Autowired
	UserTableRepository rep;
	
	@Autowired
	CartRepository cartView;

	//아이디 저장
	public boolean save(@Valid User user) {
		boolean signUp = rep.save(user) != null;
		return signUp;
	}
	//아이디 찾기
	public String findId(String name, int phone_num) {
		String ufId = rep.findId(name, phone_num);
		if (ufId == null) {
			return "없는 회원 입니다";
		} else {
			return ufId;
		}
	}
	//비밀번호 찾기
	public String findPw(String u_email, String name, int phone_num) {
		String ufPw = rep.findPw(u_email, name, phone_num);
		if (ufPw == null) {
			return "없는 정보 입니다";
		} else {
			return ufPw;
		}
	}
	//로그인 
	public String login(String u_email, String pw, HttpSession session) {
		Optional<User> user = rep.findById(u_email);
		if(user.isEmpty())
			return "<script>" + "alert('없는 아이디입니다 ');" + "location.href='/DrMarten/loginForm'"+ "</script>";
		User chek = user.get();

		if (chek != null && chek.getU_pw().equals(pw)) {
			ItemCartService svc = new ItemCartService();
			
			List<Cart>list = cartView.findByEmail(u_email);
			if(list != null ) {
				
				svc.setCart(list);
				session.setAttribute("u_email", u_email);
				session.setAttribute("u_cart", svc);
				cartView.deleteByEmail(u_email);
				return "<script>" + "location.href='/DrMarten'" + "</script>";
			}
			
			session.setAttribute("u_email", u_email);
			session.setAttribute("u_cart", svc);
			return "<script>"  + "location.href='/DrMarten'" + "</script>";
		}

		if (chek != null && !(chek.getU_pw().equals(pw))) {
			return "<script>" + "alert('비밀번호 틀림 ');" + "location.href='/DrMarten/loginForm'" + "</script>";
		}
		return null;

	}
	//삭제
	public boolean deleteById(Object attribute) {
		rep.deleteById(attribute);
		return true;
	}
	
	
}
