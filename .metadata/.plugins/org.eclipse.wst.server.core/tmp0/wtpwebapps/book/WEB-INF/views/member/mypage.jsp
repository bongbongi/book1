<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
id : ${ses.mem_id}
num : ${ses.mem_num}
<ul>
	<li><a href="/mem/modify">회원정보수정</a></li>
	<li><a href="/mem/check">주문/배송조회</a></li>
	<li><a href="">보관함</a></li>
	<li><a href="">구매함</a></li>
	<li><a href="">1대1문의</a></li>
	<li><a href="">회원탈퇴</a></li>
</ul>
</body>
</html>