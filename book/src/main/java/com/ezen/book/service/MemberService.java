package com.ezen.book.service;

import com.ezen.book.domain.MemberVO;

public interface MemberService {

	String join(MemberVO mvo);

	MemberVO login(String id, String pw);

	int usermodify(MemberVO mvo);

	String getId(MemberVO mvo);

	String getPw(MemberVO mvo);

	int update(String addressAll);

	int newPwUpdate(MemberVO mvo);

	String idCheck(String mem_id);

	String pwCheck(String mem_pw);

	String cellNumCheck(String mem_cell_num);

}
