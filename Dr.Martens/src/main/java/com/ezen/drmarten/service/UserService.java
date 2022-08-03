package com.ezen.drmarten.service;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.drmarten.model.User;
import com.ezen.drmarten.repository.UserTableRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UserService {

	@Autowired
	UserTableRepository rep;

	public boolean save(@Valid User user) {
		boolean signUp = rep.save(user) != null;
		return signUp;
	}

	public String findId(String name, int phone_num) {
		String ufId = rep.findId(name, phone_num);
		if (ufId == null) {
			return "없는 회원 입니다";
		} else {
			return ufId;
		}
	}

	public String findPw(String u_email, String name, int phone_num) {
		String ufPw = rep.findPw(u_email, name, phone_num);
		if (ufPw == null) {
			return "없는 정보 입니다";
		} else {
			return ufPw;
		}
	}

	public String login(String u_email, String pw, HttpSession session) {
		Optional<User> user = rep.findById(u_email);
		User chek = user.get();

		if (chek != null && chek.getU_pw().equals(pw)) {
			session.setAttribute("u_email", u_email);
			return "<script>" + "alert('성공');" + "location.href='/user/login'" + "</script>";
		}

		if (chek != null && !(chek.getU_pw().equals(pw)))
			return "<script>" + "alert('비밀번호 틀림 ');" + "location.href='/user/login'" + "</script>";

		return "<script>" + "alert('없는 아이디 ');" + "location.href='/user/login'" + "</script>";

	}

	public boolean deleteById(Object attribute) {
		rep.deleteById(attribute);
		return true;
	}
}
