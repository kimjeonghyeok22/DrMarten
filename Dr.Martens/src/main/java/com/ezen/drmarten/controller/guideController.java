package com.ezen.drmarten.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/guide")
public class guideController {
	
	@GetMapping("/style")
	public String gui() {
		return "guide/style_guide";
	}
	
	@GetMapping("/main")
	public String main() {
		return "guide/main";
	}
	
}
