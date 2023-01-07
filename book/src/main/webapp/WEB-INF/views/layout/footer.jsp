<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.footer {
	width: 1260px;
	height: 230px;
	background-color: rgba(175, 175, 175, 0.5);
	margin: 0 auto;
}

.footer-logo {
	
	width: 120px;
	height: 120px;
	background-color: beige;
}
.footer-logo>img{
	width: 120px;
	height: 120px;
}

.address-box {
	text-align: left;
	padding: 0;
	margin: 0;
}

.address {
	padding: 15px;
	height: 150px;
	display: flex;
	font-size: 15px;
	/* align-items: baseline; */
	flex-direction: row;
	flex-wrap: nowrap;
	justify-content: space-around;
}

ul {
	list-style: none;
}

.footer, .address li {
	
}

.footer-top {
	text-align: center;
	padding-top: 12px;
}

.footer-top>ul {
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
}

.footer-top>li {
	margin: 0;
	padding: 0;
}

a {
	text-decoration-line: none;
	color: black;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

a:focus {
	text-decoration: none;
}

a:hover, a:active {
	text-decoration: none;
}

.online-serviceBar {
	padding: 0px;
	margin-left: 20px;
	width: 120px;
	height: 120px;
}

.online-serviceBar>ul {
	margin: 0px;
	padding: 0px;
}

</style>

</head>

<body>
	<div class="footer">
		<div class="footer-top">
			<ul>
				<li><a href="">회사소개 | </a></li>
				<li><a href="">이용약관 | </a></li>
				<li><a href="">개인정보처리방침</a></li>
			</ul>
		</div>
		<hr>
		<div class="address">
			<div class="footer-logo">
				<img src="./resources/img/logo.jpg" alt="로고">
			</div>
			<div class="address-box">
				<ul>
					<li>회사명 : (주)WW <span style="margin-right: -7px;">ㅣ</span>
						대표이사 : ABC
					</li>

					<li>소재지 : 인천광역시 남동구 구월 5415</li>
					<li>사업자 등록번호 : 123-45-67890 <span style="margin-right: -7px;">ㅣ</span>
						통신판매업 신고번호 : 2023-인천-00000
					</li>

					<li>개인정보관리 책임자 : ezen <span style="margin-right: -7px;">ㅣ</span>
						abc@ezen.ww.kr <span style="margin-right: -7px;">ㅣ</span> 대량주문 :
						abc@ezen.ww.kr
					</li>

					<li>COPYRIGHT © WW BOOKSTORE INC. ALL RIGHTS RESERVED.</li>

				</ul>

			</div>
			<div class="online-serviceBar">
				<strong>온라인 서비스</strong>
				<ul>
					<li><a href="">마이페이지</a></li>
					<li><a href="">공지사항</a></li>
					<li><a href="">1대1문의</a></li>
					<li><a href="">FAQ</a></li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>