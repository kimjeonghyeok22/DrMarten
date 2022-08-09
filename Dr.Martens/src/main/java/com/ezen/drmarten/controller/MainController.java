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
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/DrMarten")
public class MainController {


	@Autowired
	private BoardMapper dao;
	
	@GetMapping("")
	public String index() {
		return "thymeleaf/main/index";
	}
	
	@GetMapping("/qna")
	public String qnaList(Model model) {
		int pageNum = 1;
		int pageSize = 5;
		PageHelper.startPage(pageNum, pageSize);
		PageInfo<Board> pageInfo = new PageInfo<>(dao.getQnaList());
		List<Board> list = pageInfo.getList();
		List <String> btnlist = categoryBtnForQna("전체");
		 model.addAttribute("btnlist", btnlist);
		model.addAttribute("pageInfo", pageInfo);
		return "main/qna";
	}
	
	@GetMapping("/notice")
	public String noticeList(Model model) {
		int pageNum = 1;
		int pageSize = 5;
		PageHelper.startPage(pageNum, pageSize);
		PageInfo<Board> pageInfo = new PageInfo<>(dao.getNoticeList());
		List<Board> list = pageInfo.getList();
		model.addAttribute("pageInfo", pageInfo);
		return "main/notice";
	}
	@GetMapping("/notice/page/{page}")
	public String notice_listByPage(@PathVariable("page") int page, Model model) {
		int pageNum = page;
		int pageSize = 5;
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
		List <String> btnlist = categoryBtnForQna("전체");
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
		List <String> btnlist = categoryBtnForQna(category);
		 model.addAttribute("btnlist", btnlist);
		return "main/qna";
	}
	@PostMapping("/qna/search")
	public String qa_search(@RequestParam("search") String search,
			@RequestParam(name = "page", defaultValue = "1") int page,
			@RequestParam(name = "psize", defaultValue = "8") int pageSize, Model model) {
		PageHelper.startPage(page, pageSize);
		PageInfo<Board> pageInfo = new PageInfo<>(dao.searchQnaList(search));
		List <String> btnlist = categoryBtnForQna("전체");
		 model.addAttribute("btnlist", btnlist);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("search", search);
		return "main/qna";
	}
	@GetMapping("/notice/detail/{num}")
	public String notice_detail(@PathVariable("num") int num, Model model) {
		Board board = dao.getNotice(num);
		model.addAttribute("board", board);
		return "main/notice_detail";
	}
	
	private List <String>  categoryBtnForQna(String category) {
		String [] arr = {"전체","회원정보관련", "주문결제","배송안내", "주문취소", "교환/반품/환불","상품관련","포인트 및 이벤트", "기타","AS"};
		List <String> btnlist = new ArrayList<>();
		if(category.equals("교환•반품•환불")) category = arr[5];
		String startOn = "<div class=\"category_btn on\">";
		String start = "<div class=\"category_btn\">";
		String end = "</div>";
		for(int i = 0; i<arr.length; i++) {
			if(arr[i].equals(category)) {
				if(arr[i].equals("주문취소")) {
					btnlist.add(startOn + arr[i] + end+"<br>");
				} else {
					btnlist.add(startOn + arr[i] + end);
				}
			} else {
				if(arr[i].equals("주문취소")) {
					btnlist.add(start + arr[i] + end+"<br>");
				} else {
					btnlist.add(start + arr[i] + end);
				}
			}
		}
		return btnlist;
	}
	
}
