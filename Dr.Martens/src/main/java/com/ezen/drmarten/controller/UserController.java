package com.ezen.drmarten.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.drmarten.model.User;
import com.ezen.drmarten.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService svc;
	@Autowired
	HttpSession session;
	
	@GetMapping("/sign_up_form")
	public String signUpForm() {
		return"/user/signUp";
	}
	
	@GetMapping("/login")
	public String login_form() {
		return"/user/login";
	}
	@PostMapping("/login")
	@ResponseBody
	public String login(@RequestParam("u_email") String u_email, @RequestParam("u_pw")String u_pw, HttpSession session) {
		
	
		String  checked = svc.login(u_email,u_pw, session);
		log.debug("session = {}", session.getAttribute("u_email"));
		return  checked;
	}
	@GetMapping("/find_id")
	public String find_id_form() {
		return"/user/find_id";
	}
	@GetMapping("find_pw")
	public String find_pw_form() {
		return "/user/find_pw";
	}
	
	@PostMapping("/id_check")
	@ResponseBody
	public Map<String, Object> id_check(@RequestParam("u_id")String u_id){
		System.out.println(u_id);
		log.info("{}아이디",u_id);
		
		boolean checked = svc.id_check(u_id);
		Map<String, Object> map = new HashMap<>();
		map.put("checked", checked);
		session.setAttribute("u_id", u_id);
		return map;
	}
	@PostMapping("/singUp")
	@ResponseBody
	public Map<String, Object> signUp(@Valid User user,
									  @RequestParam("u_pw2")String u_pw2){
		log.info("사인업 ={}",user.toString());
		log.info("pw2={}",u_pw2);
		log.info("pw={}",user.getU_pw());
		Map<String,Object> map = new HashMap<>();
		if(user.getU_pw() == u_pw2) {
			boolean signUp = svc.save(user);
			map.put("signUp", signUp);
			return map;
		}else {
			map.put("signUp", false);
			return map;
		}
		/*
		if(user.getU_pw() != u_pw2) {
			map.put("signUp", false);
			return map;
		}else {
		boolean signUp = svc.save(user);
		map.put("signUp",signUp);
		
		return map;
	}
	*/
	}
	@PostMapping("/find_id")
	@ResponseBody
	public Map<String, Object> findId(@RequestParam("name")String name,
									  @RequestParam("adress")String adress){
		Map<String,Object> map = new HashMap<>();
		String ufId = svc.findId(name,adress);
		map.put("ufId", ufId);
		
		return map;
	}
	
	@PostMapping("/find_pw")
	@ResponseBody
	public Map<String, Object> findPw(@RequestParam("u_id")String u_id,
									  @RequestParam("name")String name,
									  @RequestParam("adress")String adress){
		Map<String,Object> map = new HashMap<>();
		String ufPw = svc.findPw(u_id,name,adress);
		map.put("ufPw", ufPw);
		return map;
	}
}
