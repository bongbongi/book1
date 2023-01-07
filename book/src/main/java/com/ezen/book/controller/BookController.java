package com.ezen.book.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.book.domain.BookVO;
import com.ezen.book.service.BookService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/b/*")
@Controller
public class BookController {

	@Inject
	private BookService bsvc;

}
