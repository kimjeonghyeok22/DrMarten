package com.ezen.drmarten.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.drmarten.mappers.BoardMapper;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private BoardMapper dao;

	@GetMapping("")
	public String loginForm() {
		return "thymeleaf/admin/login";
	}

	
}
