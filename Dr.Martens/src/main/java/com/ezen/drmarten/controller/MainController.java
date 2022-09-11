package com.ezen.drmarten.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
		return "main/index";
	}
	
	@GetMapping("/sandal")
	public String sandal() {
		return "main/sandal";
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
	
	@GetMapping("/realtime-search")
	public String realtime() {
		return "main/realtime";
	}
	
	@GetMapping("/sizeguide")
	public String sizeguide() {
		return "main/sizeguide";
	}
	
	@GetMapping("/sitemap")
	public String sitemap() {
		return "main/sitemap";
	}
	
	//고객센터
	@GetMapping("/service/cs")
	public String cs(Model model) {
		List<Board> list = dao.getLatestNotice();
		model.addAttribute("list", list);
		return "main/service/cs";
	}
	
	@GetMapping("/review/{order_num}/{product_code}")
	public String getReview(@PathVariable("order_num") int num,@PathVariable("product_code") int product_code, Model model) {
		Board review = dao.getReview(num);
		if(review==null) {
			model.addAttribute("order_num",num);
			model.addAttribute("product_code",product_code);
			return "dr/review_form";
		}else {
			return "redirect:/DrMarten/product/detail_product/"+product_code;
		}
	}
	
	@GetMapping("/writeQna/{product_code}")
	public String writeQna(@PathVariable("product_code") int product_code, Model model) {
		model.addAttribute("product_code", product_code);
		return "dr/myqna_form_main";
	}
	
	@GetMapping("/writeQna/order/{order_num}")
	public String writeQnaWithOrderNum(@PathVariable("order_num") int order_num, Model model) {
		model.addAttribute("order_num", order_num);
		return "dr/myqna_form_main2";
	}
	@GetMapping("/writeQna")
	public String writeQnaCS() {
		return "dr/myqna_form_main3";
	}
	
	
	@GetMapping("/myqna/list")
	public String getMyQna(HttpSession session, Model model) {
		String email = (String) session.getAttribute("u_email");
		if(email==null) return "redirect:/DrMarten/user/login";
		List <Board> qalist = dao.getMyQna2(email);
		List<Board> rplist = dao.getMyQnaRP();
		model.addAttribute("qa",qalist);
		model.addAttribute("rp",rplist);
		return "main/service/myqa";
	}
}
