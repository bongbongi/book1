package com.ezen.book.service;

import com.ezen.book.domain.UnmemberVO;

public interface NonMemberService {

	UnmemberVO login(UnmemberVO umvo);

	int searchNum(UnmemberVO umvo);

//	int searchPw(UnmemberVO umvo);



}
