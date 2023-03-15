package com.ezen.book.controller;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.ezen.book.domain.NonMemberVO;
import com.ezen.book.service.NonMemberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/nonMem/*")
@Controller
public class NonMemberController {

	@Inject
	private NonMemberService nmsv;

	@GetMapping("/orderNumsearch")
	public String orderNumsearch() {
		return "/member/memberOrderNumSearch";
	}

	@GetMapping("/orderPWsearch")
	public String orderPWsearch() {
		return "/member/memberOrderPwSearch";
	}

	@PostMapping("orderNumsearch") // 주문번호 찾기
	public String orderNumsearch(NonMemberVO umvo, RedirectAttributes reAttr) {
		int mem_num = nmsv.searchNum(umvo);
		log.info("mem_num 확인 : " + mem_num);
		if (mem_num != 0) {
			reAttr.addFlashAttribute("msg", mem_num);
		} else {
			reAttr.addFlashAttribute("msg", "0");
		}
		return "redirect:/nonMem/memberOrderNumSearch";
	}

}
