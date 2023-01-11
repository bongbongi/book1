<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정페이지</title>
</head>
<body>
			<c:when test="${content eq 'modify' || content == 'main' }">
				<div class="memberModify mypage-right">
				<div class="join-container">
            <div class="logo">
                <a href="/"><img src="../resources/img/logo.jpg" alt="로고"></a><br>
            </div>
            <div class="join">
				<lable for="mem_id">ID</lable>
				<br> <input type="text" class="join-input" name="mem_id" value="${ses.mem_id}"
					id="mem_id" placeholder="아이디" onchange="checkId()" required>
					<span class="id_ok"><i class="fa-solid fa-check"></i></span>
	                <span class="id_duplicate"><i class="fa-solid fa-x"></i></span>
	                <span class="id_null"><i class="fa-solid fa-x"></i></span>
	                <Br>
                <lable for="mem_pw">PW</lable><br>
                <input type="password" class="join-input" name="mem_pw" id="mem_pw" value="${ses.mem_pw}" 
                    placeholder="영문(대소문자 구분), 숫자, 특수문자 조합, 9~12자리" onchange="checkPw()" required>
                <span class="pw_ok"><i class="fa-solid fa-check"></i></span>
                <span class="pw_rewrite"><i class="fa-solid fa-x"></i></span>
                <span class="pw_null"><i class="fa-solid fa-x"></i></span>
                <br>
                <lable for="mem_name">NAME</lable><br>
                <input type="text" class="join-input" name="mem_name" placeholder="이름" required>
                <br>
                <lable for="mem_postzip">ADDRESS</lable><br>

                <input type="text" class="join-input zip" id="postcode" name="mem_postzip" placeholder="우편번호" value="${ses.mem_postzip}" required>
                <input type="button" class="join-input zip btn btn-outline-primary" onclick="execDaumPostcode()"
                    value="우편번호 찾기">
                <br>

                <input type="text" class="join-input" id="address" name="address" placeholder="주소" required>

                <br>

                <input type="text" class="join-input" id="detailAddress" name="detailAddress" placeholder="상세주소"
                    required>
                <input type="text" class="join-input" id="extraAddress" name="extraAddress" placeholder="참고항목">
                <br>
                <lable for="mem_age">AGE</lable><br>
                <td><input type="text" class="join-input" name="mem_age" placeholder="나이" value="${ses.mem_age}" required>
                    <br>
                    <lable for="mem_gender">GENDER</lable><br>
                    <select class="join-input" name="mem_gender" required="required">
                        <option value="null">선택해주세요</option>
                        <option value="1">남자</option>
                        <option value="2">여자</option>
                    </select>
                    <br>
                    <lable for="mem_cell_num">PHONE</lable><br>
                    <input type="text" class="join-input" name="mem_cell_num" id="mem_cell_num" value="${ses.mem_cell_num}" placeholder="숫자만 써주세요"
                        onchange="checkCellNum()" required>
                    <span class="cellNum_ok"><i class="fa-solid fa-check"></i></span>
                    <span class="cellNum_duplicate"><i class="fa-solid fa-x"></i></span>
                    <span class="cellNum_null"><i class="fa-solid fa-x"></i></span>
                    <br>
                    <lable for="mno_cno">FAVORITE</lable><br>

                    <select class="join-input" name="mno_cno" required="required">
                        <option value="0" selected="selected">선택해주세요</option>
                        <option value="1">소설</option>
                        <option value="2">에세이</option>
                        <option value="3">건강/취미</option>
                        <option value="4">컴퓨터/모바일</option>
                    </select>
                    <Br>
                    <button type=submit" class="btn btn-outline-secondary btn-submit">수정하기</button>
					</form>
				</div>
			</c:when>



 <form action="/mem/join" method="post">
        <div class="join-container">
            <div class="logo">
                <a href="/"><img src="../resources/img/logo.jpg" alt="로고"></a><br>
            </div>
            <div class="join">
				<lable for="mem_id">ID</lable>
				<br> <input type="text" class="join-input" name="mem_id" value="${ses.mem_id}"
					id="mem_id" placeholder="아이디" onchange="checkId()" required>
					<span class="id_ok"><i class="fa-solid fa-check"></i></span>
	                <span class="id_duplicate"><i class="fa-solid fa-x"></i></span>
	                <span class="id_null"><i class="fa-solid fa-x"></i></span>
	                <Br>
                <lable for="mem_pw">PW</lable><br>
                <input type="password" class="join-input" name="mem_pw" id="mem_pw" value="${ses.mem_pw}" 
                    placeholder="영문(대소문자 구분), 숫자, 특수문자 조합, 9~12자리" onchange="checkPw()" required>
                <span class="pw_ok"><i class="fa-solid fa-check"></i></span>
                <span class="pw_rewrite"><i class="fa-solid fa-x"></i></span>
                <span class="pw_null"><i class="fa-solid fa-x"></i></span>
                <br>
                <lable for="mem_name">NAME</lable><br>
                <input type="text" class="join-input" name="mem_name" placeholder="이름" required>
                <br>
                <lable for="mem_postzip">ADDRESS</lable><br>

                <input type="text" class="join-input zip" id="postcode" name="mem_postzip" placeholder="우편번호" value="${ses.mem_postzip}" required>
                <input type="button" class="join-input zip btn btn-outline-primary" onclick="execDaumPostcode()"
                    value="우편번호 찾기">
                <br>

                <input type="text" class="join-input" id="address" name="address" placeholder="주소" required>

                <br>

                <input type="text" class="join-input" id="detailAddress" name="detailAddress" placeholder="상세주소"
                    required>
                <input type="text" class="join-input" id="extraAddress" name="extraAddress" placeholder="참고항목">
                <br>
                <lable for="mem_age">AGE</lable><br>
                <td><input type="text" class="join-input" name="mem_age" placeholder="나이" value="${ses.mem_age}" required>
                    <br>
                    <lable for="mem_gender">GENDER</lable><br>
                    <select class="join-input" name="mem_gender" required="required">
                        <option value="null">선택해주세요</option>
                        <option value="1">남자</option>
                        <option value="2">여자</option>
                    </select>
                    <br>
                    <lable for="mem_cell_num">PHONE</lable><br>
                    <input type="text" class="join-input" name="mem_cell_num" id="mem_cell_num" value="${ses.mem_cell_num}" placeholder="숫자만 써주세요"
                        onchange="checkCellNum()" required>
                    <span class="cellNum_ok"><i class="fa-solid fa-check"></i></span>
                    <span class="cellNum_duplicate"><i class="fa-solid fa-x"></i></span>
                    <span class="cellNum_null"><i class="fa-solid fa-x"></i></span>
                    <br>
                    <lable for="mno_cno">FAVORITE</lable><br>

                    <select class="join-input" name="mno_cno" required="required">
                        <option value="0" selected="selected">선택해주세요</option>
                        <option value="1">소설</option>
                        <option value="2">에세이</option>
                        <option value="3">건강/취미</option>
                        <option value="4">컴퓨터/모바일</option>
                    </select>
                    <Br>
                    <button type=submit" class="btn btn-outline-secondary btn-submit">수정하기</button>
    </form>