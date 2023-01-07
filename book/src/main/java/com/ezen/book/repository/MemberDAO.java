package com.ezen.book.repository;

import org.springframework.stereotype.Repository;

import com.ezen.book.domain.MemberVO;

@Repository
public interface MemberDAO {

	MemberVO getId(String mem_id);

	int insertMember(MemberVO mvo);

	int login(MemberVO mvo);

	int usermodify(MemberVO mvo);

	String getIdSearch(MemberVO mvo);

	String getPwSearch(MemberVO mvo);

	int updateAdderess(String addressAll);

	int newPwUpdate(MemberVO mvo);

	String getCellNum(String mem_cell_num);




}
