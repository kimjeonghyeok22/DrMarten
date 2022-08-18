package com.ezen.drmarten.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.drmarten.mappers.BoardMapper;
import com.ezen.drmarten.model.Board;
import com.ezen.drmarten.service.MainService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/DrMarten")
public class MainController {


	@Autowired
	private BoardMapper dao;
	@Autowired
	private MainService svc;
	
	@GetMapping("")
	public String index() {
		return "thymeleaf/main/index";
	}
	
	@GetMapping("/sendal")
	public String sendal() {
		return "main/sendal";
	}
	
	@GetMapping("/qna")
	public String qnaList(Model model) {
		int pageNum = 1;
		int pageSize = 5;
		PageHelper.startPage(pageNum, pageSize);
		PageInfo<Board> pageInfo = new PageInfo<>(dao.getQnaList());
		List<Board> list = pageInfo.getList();
		List <String> btnlist = svc.categoryBtnForQna("전체");
		 model.addAttribute("btnlist", btnlist);
		model.addAttribute("pageInfo", pageInfo);
		return "main/qna";
	}
	
	@GetMapping("/notice")
	public String noticeList(Model model) {
		int pageNum = 1;
		int pageSize = 10;
		PageHelper.startPage(pageNum, pageSize);
		PageInfo<Board> pageInfo = new PageInfo<>(dao.getNoticeList());
		List<Board> list = pageInfo.getList();
		model.addAttribute("pageInfo", pageInfo);
		return "main/notice";
	}
	@GetMapping("/notice/page/{page}")
	public String notice_listByPage(@PathVariable("page") int page, Model model) {
		int pageNum = page;
		int pageSize = 10;
		PageHelper.startPage(pageNum, pageSize);
		PageInfo<Board> pageInfo = new PageInfo<>(dao.getNoticeList());
		List<Board> list = pageInfo.getList();
		model.addAttribute("pageInfo", pageInfo);
		return "main/notice";
	}
	
	
	@GetMapping("/qna/list/page/{page}")
	public String qa_listByPage(@PathVariable("page") int page, Model model) {
		int pageNum = page;
		int pageSize = 5;
		PageHelper.startPage(pageNum, pageSize);
		PageInfo<Board> pageInfo = new PageInfo<>(dao.getQnaList());
		List<Board> list = pageInfo.getList();
		List <String> btnlist = svc.categoryBtnForQna("전체");
		 model.addAttribute("btnlist", btnlist);
		model.addAttribute("pageInfo", pageInfo);
		return "main/qna";
	}

	@GetMapping("/qna/category/{category}")
	public String qa_listByCategory(@PathVariable("category") String category, Model model) {
		if(category.equals("교환•반품•환불")) category = "교환/반품/환불";
		int pageNum = 1;
		int pageSize = 5;
		PageHelper.startPage(pageNum, pageSize);
		if (category.equals("전체")) {
			PageInfo<Board> pageInfo = new PageInfo<>(dao.getQnaList());
			List<Board> list = pageInfo.getList();
			model.addAttribute("pageInfo", pageInfo);
		} else {
			PageInfo<Board> pageInfo = new PageInfo<>(dao.getQnaListByCategory(category));
			List<Board> list = pageInfo.getList();
			model.addAttribute("pageInfo", pageInfo);
		}
		List <String> btnlist = svc.categoryBtnForQna(category);
		 model.addAttribute("btnlist", btnlist);
		return "main/qna";
	}
	@PostMapping("/qna/search")
	public String qa_search(@RequestParam("search") String search,
			@RequestParam(name = "page", defaultValue = "1") int page,
			@RequestParam(name = "psize", defaultValue = "8") int pageSize, Model model) {
		PageHelper.startPage(page, pageSize);
		PageInfo<Board> pageInfo = new PageInfo<>(dao.searchQnaList(search));
		List <String> btnlist = svc.categoryBtnForQna("전체");
		 model.addAttribute("btnlist", btnlist);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("search", search);
		return "main/qna";
	}
	@GetMapping("/notice/detail/{num}")
	public String notice_detail(@PathVariable("num") int num, Model model) {
		dao.noticeView(num);
		Board board = dao.getNotice(num);
		model.addAttribute("board", board);
		return "main/notice_detail";
	}
	
	
	//로그인
	@GetMapping("/loginForm")
	public String loginForm() {
		return "main/loginForm";
	}
	
	//회원가입
	@GetMapping("/member/agreement")
	public String agreement() {
		return "main/mem/agreement";
	}
	
	@GetMapping("/benefits")
	public String benefits() {
		return "main/benefits";
	}
	
	@GetMapping("/membership_event")
	public String mem_event() {
		return "main/mem/event";
	}
	
	@GetMapping("/balsam")
	public String balsam() {
		return "main/balsam";
	}
	
	@GetMapping("/service/agreement")
	public String svcAgreement() {
		return "main/service/agreement";
	}
	
	@GetMapping("/service/privacy")
	public String svcPrivacy() {
		return "main/service/privacy";
	}
	
	@GetMapping("/service/contacts")
	public String svcContacts() {
		return "main/service/contacts";
	}
}
