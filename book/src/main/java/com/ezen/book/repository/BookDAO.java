package com.ezen.book.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.ezen.book.domain.BookVO;

@Repository
public interface BookDAO {

	ArrayList<BookVO> getBookList();

}
