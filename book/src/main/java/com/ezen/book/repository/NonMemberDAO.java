package com.ezen.book.repository;

import org.springframework.stereotype.Repository;

import com.ezen.book.domain.UnmemberVO;

@Repository
public interface NonMemberDAO {


	UnmemberVO getNum(UnmemberVO umvo);

	int searchNum(UnmemberVO umvo);

}
