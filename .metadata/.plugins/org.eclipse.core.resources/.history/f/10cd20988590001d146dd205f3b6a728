package com.ezen.book.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.book.domain.NoticeVO;
import com.ezen.book.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/board/*")
@Controller
public class BoardController {
	
	@Inject
	private BoardService bsv;
	
	@GetMapping("/tos") //이용약관 페이지 이동
	public String tos() {
		return "/board/boardTos";
	}
	@GetMapping("/pp") //개인정보방침 페이지 이동
	public String pp() {
		return "/board/boardPrivacyPolicy";
	}
	@GetMapping("/introduce") //개인정보방침 페이지 이동
	public String introduce() {
		return "/board/boardIntroduce";
	}
}
