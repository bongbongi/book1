package com.ezen.book.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ezen.book.domain.MemberVO;
import com.ezen.book.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/mem/*")
@Controller
public class MemberController {

	@Inject
	private MemberService msv;

	@GetMapping({"loginPage","login-member"})
	public String loginPage() {
		return "/member/login";
	}
	@GetMapping("login-Non-member")
	public String loginNonPage() {
		return "/member/login-non";
	}

	@GetMapping("joinPage")
	public String joinPage() {
		return "/member/join";
	}

	@PostMapping("/join")
	public String join(MemberVO mvo, RedirectAttributes reAttr) {
		log.info(">>> member join check 1");

		boolean isUp = msv.join(mvo);
		if (!isUp) {
			return "redirect:/member/join";
		}
		log.info(">>> member join 성공");
		return "redirect:/";
	}

	@PostMapping("/login")
	public String login(MemberVO mvo, RedirectAttributes reAttr, HttpServletRequest req) {
		MemberVO mvo2 = msv.login(mvo.getMem_id(), mvo.getMem_pw());
		log.info("login getMem_id : "+mvo.getMem_id());
		log.info("login getMem_pw : "+mvo.getMem_pw());
		if (mvo2 != null) {
			HttpSession ses = req.getSession();
			reAttr.addFlashAttribute("ses", mvo);
		} else {
			return "redirect:/mem/loginPage";
		}

		return "redirect:/";
	}

	@GetMapping("/logOut")
	public String logout(Model model, HttpServletRequest req, RedirectAttributes reAttr) {
		req.getSession().removeAttribute("ses");
		req.getSession().invalidate();

		return "redirect:/";

	}
	
	@GetMapping("/naverApi")
	public String naverApiPage() {
		return "/member/naverlogin";
	}
	@GetMapping("/callback")
	public String naverApiCallback() {
		return "/member/callback";
	}
	@GetMapping("/mypage")
		public String mypage() {
			return "/member/mypage";
	}
	@GetMapping("/modify")
	public String modify(HttpServletRequest req) {
		HttpSession ses = req.getSession();
		reAttr.addFlashAttribute("ses", mvo);
		return "/member/modify";
	}
	@PostMapping("/modify")
	public  String modifyPost(MemberVO mvo) {		
		log.info("modify>>>"+mvo.toString());
		int isUp=msv.usermodify(mvo);
		log.info(">>>modify:"+(isUp>0?"ok":"fail"));
		return "redirect:/";
	}
}
