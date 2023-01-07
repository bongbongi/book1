package com.ezen.book.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
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

	@PostMapping("idCheck") //회원가입시 id가 null,중복 확인 메서드
	@ResponseBody  //자바 객체를 HTTP 응답 본문의 객체로 변환. 안써주면 ajax가 값을 못받음
	public String idCheck(MemberVO mvo) {
		String isOk = msv.idCheck(mvo.getMem_id());
		return isOk;
	}
	@PostMapping("pwCheck")//회원가입시 pw가 null,정규화부합 확인 메서드
	@ResponseBody  
	public String pwCheck(MemberVO mvo) {
		String isOk = msv.pwCheck(mvo.getMem_pw());
		log.info(mvo.getMem_pw());
		log.info("비번 체크 isok : "+isOk);
		return isOk;
	}
	@PostMapping("cellNumCheck") //회원가입시 핸드폰번호 중복 확인 메서드
	@ResponseBody  
	public String cellNumCheck(MemberVO mvo) {
		String isOk = msv.cellNumCheck(mvo.getMem_cell_num());
		log.info(mvo.getMem_cell_num());
		log.info("폰번호 체크 isok : "+isOk);
		return isOk;
	}
	@PostMapping("/join")
	public String join(MemberVO mvo,RedirectAttributes reAttr, HttpServletRequest req) {
		String isOk = msv.join(mvo);
		if (isOk.equals("join_Fail")) { //fail이면 회원가입페이지로 다시
			return "redirect:/mem/joinPage";
		}
		log.info("우편번호 "+mvo.getMem_postzip());
		//마지막에 가입한 아이디의 주소 업데이트 하기
		String address = req.getParameter("address");
		String detailAddress = req.getParameter("detailAddress");
		String extraAddress = req.getParameter("extraAddress");
		
		String mem_ad = address+" "+detailAddress+" "+extraAddress;
		log.info("addressAll : "+mem_ad);
		int isOk2 = msv.update(mem_ad);
		log.info(isOk2>0?"주소 업데이트 성공":"주소 업데이트 실패");
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
			ses.setAttribute("ses", mvo2);
			ses.setMaxInactiveInterval(60*10);
			return "redirect:/";
		} else {
			reAttr.addFlashAttribute("msg", "0");
			return "redirect:/layout/header";
		}

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
	public String modify(MemberVO mvo,Model mo,HttpServletRequest req,RedirectAttributes reAttr) {

		return "/member/modify";
	}
	@PostMapping("/modify")
	public  String modifyPost(MemberVO mvo) {		
		log.info("modify>>>"+mvo.toString());
		int isUp=msv.usermodify(mvo);
		log.info(">>>modify:"+(isUp>0?"ok":"fail"));
		return "redirect:/";
	}
	
	@GetMapping("/join-ts")
	public String joinTs(){
		return "/member/join-ts";
	}
	@GetMapping("/MemIdSearch")
	public String MemIdSearch(){
		return "/member/MemIdSearch";
	}
	@GetMapping("/MemPwSearch")
	public String MemPwSearch(){
		return "/member/MemPwSearch";
	}
	@PostMapping("/MemIdSearch")
	public String MemIdSearch(MemberVO mvo,Model model,RedirectAttributes reAttr) {
		log.info("mvo.getMem_name : "+mvo.getMem_name());
		log.info("mvo.getMem_cell_num : "+mvo.getMem_cell_num());
		String id = msv.getId(mvo);
		log.info(id);
		if(id !=null) {
			/* model.addAttribute("msg", id); */
			 reAttr.addFlashAttribute("msg", id);
		}else {
			/* model.addAttribute("msg", "0"); */
			reAttr.addFlashAttribute("msg", "0");
		}
		return "redirect:/mem/MemIdSearch";
	}
	@PostMapping("/MemPwSearch")
	public String MemPwSearch(MemberVO mvo,Model model,RedirectAttributes reAttr) {
		log.info("mvo.getMem_id : "+mvo.getMem_id());
		log.info("mvo.getMem_name : "+mvo.getMem_name());
		log.info("mvo.getMem_cell_num : "+mvo.getMem_cell_num());
		
		String pw = msv.getPw(mvo);

		if(pw !=null) {
			//id,name,cellNum이 맞으면 새 비밀번호 입력 요청 페이지로 이동
			//id도 같이 보내기
			 model.addAttribute("mvo", mvo);
			 log.info("newpw페이지 이동 전 아이디 넘어가는지 확인 : "+mvo.getMem_id());
			 return "/member/memNewPw";
		}else {
			/* model.addAttribute("msg", "0"); */
			reAttr.addFlashAttribute("msg", "0");
			return "redirect:/mem/MemPwSearch";
		}
	}
	@PostMapping("/newPwUpdate")
	public String memNewPw(MemberVO mvo, HttpServletRequest req) {
		String mem_id = req.getParameter("mem_id");
		String mem_pw = req.getParameter("mem_pw");
		String mem_pwRe = req.getParameter("mem_pwRe");

		if(mem_pw.equals(mem_pwRe)) {
			int isOk = msv.newPwUpdate(mvo);
		}
		return "redirect:/";
	}
}
