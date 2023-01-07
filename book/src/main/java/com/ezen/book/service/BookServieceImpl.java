package com.ezen.book.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ezen.book.domain.BookVO;
import com.ezen.book.repository.BookDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BookServieceImpl implements BookService {

	@Inject
	private BookDAO bdao;

	@Override
	public ArrayList<BookVO> getBookList() {
		log.info("book list test ok");
		return bdao.getBookList();
	}
}
