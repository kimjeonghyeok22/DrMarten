package com.ezen.drmarten.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.drmarten.model.User;
import com.ezen.drmarten.repository.UserTableRepository;
import com.ezen.drmarten.service.UserService;
import com.ezen.drmarten.util.Gmail;
import com.ezen.drmarten.util.SHA256;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService svc;
	@Autowired
	HttpSession session;
	@Autowired
	UserTableRepository rep;

	@GetMapping("/signUp")
	public String signUpForm() {
		return "/user/signUp";
	}

	@GetMapping("/login")
	public String login_form() {
		return "/user/login";
	}

	@GetMapping("/emailwaitingroom")
	public String emailwaitingroom() {
		return "/user/emailwaitingroom";
	}

	@GetMapping("/restSignUp")
	public String restSignUp(@RequestParam("u_email") String u_email, Model model) {
		model.addAttribute("u_email", u_email);
		return "/user/restSignUp";
	}

	@PostMapping("/login")
	@ResponseBody
	public String login(@RequestParam("u_email") String u_email, @RequestParam("u_pw") String u_pw,
			HttpSession session) {
		String checked = svc.login(u_email, u_pw, session);
		return checked;
	}

	@GetMapping("/find_id")
	public String find_id_form() {
		return "/user/find_id";
	}

	@GetMapping("find_pw")
	public String find_pw_form() {
		return "/user/find_pw";
	}

	@GetMapping("/edit")
	public String edit_form(HttpSession session, Model model) {
		if (session.getAttribute("u_email") == null) {
			return "/user/login";
		} else {
			Optional<User> op = rep.findById(session.getAttribute("u_email"));
			User user = op.get();
			model.addAttribute("user", user);
			return "/user/edit";
		}
	}

	@PostMapping("/edit")
	@ResponseBody
	public String edit(@Valid User user, BindingResult result, Model model, HttpSession session,
			@RequestParam("u_pw2") String u_pw2) {

		if (user.getU_pw().equals(u_pw2)) {
			rep.deleteById(user.getU_email());
			rep.save(user);
			session.removeAttribute("u_email");
			return "<script>" + "alert('회원정보가 수정 되었습니다, 다시 로그인 해주세요');" + "location.href='/user/login'" + "</script>";
		} else {
			return "<script>" + "alert('비밀번호가 다릅니다');" + "location.href='/user/edit'" + "</script>";
		}
	}

	@PostMapping("/sign_Up")
	@ResponseBody
	public String signUp(@Valid User user, BindingResult result, Model model, @RequestParam("u_pw2") String u_pw2) {
		if (user.getU_pw().equals(u_pw2)) {
			user.setUserEmailChecked(1);
			rep.save(user);
			return "<script>" + "alert('회원가입이 되었습니다');" + "location.href='/user/login'" + "</script>";
		} else {
			return "<script>" + "alert('비밀번호가 다릅니다');" + "location.href='/user/restSignUp?u_email=" + user.getU_email()
					+ "'" + "</script>";
		}
	}

	@PostMapping("/find_id")
	@ResponseBody
	public String findId(@RequestParam("name") String name, @RequestParam("phone_num") int phone_num) {
		String ufId = svc.findId(name, phone_num);
		return "<script>" + "alert('귀하의 아이디는 " + ufId + "입니다.');" + "location.href='/user/login'" + "</script>";
	}

	@PostMapping("/deleteId")
	@ResponseBody
	public boolean deleteId(HttpSession session) {
		boolean deleted = svc.deleteById(session.getAttribute("u_email"));
		session.removeAttribute("u_email");
		return deleted;
	}

	@PostMapping("/find_pw")
	@ResponseBody
	public String findPw(@RequestParam("u_email") String u_email, @RequestParam("name") String name,
			@RequestParam("phone_num") int phone_num) {
		String ufPw = svc.findPw(u_email, name, phone_num);
		return "<script>" + "alert('귀하의 비밀번호는 " + ufPw + "입니다.');" + "location.href='/user/login'" + "</script>";
	}

	// 이메일 확인
	@PostMapping("/emailSendAction")
	@ResponseBody
	private String emailSendAction(@RequestParam("u_email") String u_email) {
		System.out.println(u_email);
		if (u_email == null || u_email == "") {
			return "<script>" + "alert('아이디를 입력해주세요');" + "location.href='/user/signUp'" + "</script>";
		}
		Optional<User> op = rep.findById(u_email);
		if (op.isPresent()) {
			return "<script>" + "alert('이미 회원가입이된 회원입니다');" + "location.href='/user/login'" + "</script>";
		} else {
			String host = "http://localhost/user/";
			String from = "kojingon97@gmail.com";
			String to = u_email;
			String subject = "회원가입을 위한 이메일 인증";
			String content = "다음링크에 접속하여 인증을 완료 해주세요" + "<a href = ' " + host + "emailCheck?code="
					+ SHA256.getSHA245(to) + "&u_email=" + u_email + " ' >이메일 인증하기</a>";

			Properties p = new Properties();

			p.put("mail.smtp.host", "smtp.gmail.com");
			p.put("mail.smtp.port", "465");
			p.put("mail.smtp.starttls.enable", "true");
			p.put("mail.smtp.auth", "true");
			p.put("mail.smtp.ssl.protocols", "TLSv1.2");
			p.put("mail.smtp.debug", "true");
			p.put("mail.smtp.socketFactory.port", "465");
			p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			p.put("mail.smtp.socketFactory.fallback", "false");
			try {

				Authenticator auth = new Gmail();
				Session ses = Session.getInstance(p, auth);
				ses.setDebug(true);
				MimeMessage msg = new MimeMessage(ses);
				msg.setSubject(subject);
				Address fromAddr = new InternetAddress(from);
				msg.setFrom(fromAddr);
				Address toAddr = new InternetAddress(to);
				msg.addRecipient(Message.RecipientType.TO, toAddr);
				msg.setContent(content, "text/html;charset=UTF-8");
				Transport.send(msg);

				return "<script>" + "location.href='/user/emailwaitingroom'" + "</script>";
			} catch (Exception e) {
				e.printStackTrace();
				return "<script>" + "alert('오류가 발생했습니다');" + "history.back();" + "</script>";
			}

		}

	}

	// 보낸 메시지 확인
	@GetMapping("/emailCheck")
	@ResponseBody
	private String emailCheck(@Param("u_email") String u_email, @Param("code") String code) {
		new SHA256();
		boolean isRight = (SHA256.getSHA245(u_email).equals(code)) ? true : false;
		if (isRight) {
			return "<script>" + "alert('인증에 성공했습니다');" + "location.href='/user/restSignUp?u_email=" + u_email + "'"
					+ "</script>";
		} else {
			return "<script>" + "alert('유효하지않은 코드입니다');" + "location.href='/user/singUp'" + "</script>";
		}

	}

}
