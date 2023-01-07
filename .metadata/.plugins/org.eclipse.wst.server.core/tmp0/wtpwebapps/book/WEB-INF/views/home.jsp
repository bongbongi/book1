<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.net.URL"%>
<%@ page import="java.net.HttpURLConnection"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.io.InputStreamReader"%>

<html>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<head>
<title>Home</title>
<style>
* {
	text-align: center;
}

.home_main {
	
}

body {
	margin: 0 auto;
	width: 1260px;
	margin: 0 auto;
}

.slide {
	background-color: peru;
	margin: 0 auto;
	margin-top: 210px;
	width: 1260px;
	height: 500px;
}

.todayBookImg {
	width: 300px;
	height: 300px;
	background-color: aqua;
}

.todayBookImg>img {
	width: 300px;
	height: 300px;
}

.todayBook {
	
}

.todayBookIntroduce {
	margin: 0 auto;
	display: flex;
}

.Best_item {
	width: 230px;
	height: 300px;
	background-color: antiquewhite;
	display: inline-block;
	vertical-align: top;
	margin-right: 10px;
	margin-bottom: 50px;
}

.img_box {
	width: 220px;
	height: 200px;
	background-color: lightgray;
	margin: 5px;
}

.BestSellerList {
	list-style: none;

	/* display: -moz-inline-box; */
}

.BestSellerList:nth-last-child(-n+5) {
	margin-top: 50px;
}

.bestSeller {
	/* display: flex; */
	
}

.d-block {
	height: 500px;
}
</style>
</head>
<body>
	<jsp:include page="./layout/header.jsp"></jsp:include>


	<div class="home_main">
		<nav class="navbar navbar-expand-lg bg-light">
			<div class="container-fluid">
				<!-- <a class="navbar-brand" href="#">Navbar</a> -->
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<!-- <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">이벤트</a>
              </li> -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> 카테고리 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">소설</a></li>
								<li><a class="dropdown-item" href="#">에세이</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="#">문제집</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link" href="#">베스트</a></li>
						<li class="nav-item"><a class="nav-link" href="#">이벤트</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="slide">
			<div id="carouselExampleCaptions" class="carousel slide"
				data-bs-ride="false">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleCaptions"
						data-bs-slide-to="0" class="active" aria-current="true"
						aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleCaptions"
						data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#carouselExampleCaptions"
						data-bs-slide-to="2" aria-label="Slide 3"></button>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img
							src="https://cdn.pixabay.com/photo/2020/04/28/18/33/key-5105878_1280.jpg"
							class="d-block w-100" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<h5>First slide label</h5>
							<p>Some representative placeholder content for the first
								slide.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img
							src="https://cdn.pixabay.com/photo/2016/09/08/22/43/books-1655783_1280.jpg"
							class="d-block w-100" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<h5>Second slide label</h5>
							<p>Some representative placeholder content for the second
								slide.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img
							src="https://cdn.pixabay.com/photo/2015/11/19/21/11/atlas-1052011_1280.jpg"
							class="d-block w-100" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<h5>Third slide label</h5>
							<p>Some representative placeholder content for the third
								slide.</p>
						</div>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>
		<div class="todayBook">
			<h1>오늘의 책</h1>
			<div class="todayBookIntroduce">
				<div class="todayBookImg">
					<img
						src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791167740847.jpg">
				</div>
				<div>제목 지은이,출판사 가격 책 간단 줄거리</div>
			</div>
		</div>
		<h1>베스트 셀러</h1>
		<div class="BestSeller">
			<ul class="BestSellerList">
			<c:forEach items="${book_list}" var="list">
				<li class="Best_item">
					<div class="rank">랭크아이콘</div>
					<div class="img_box">
						<a href="#">사진 누르면 상세페이지 이동</a>
					</div>
					<div class="info_box">
						<span>${list.book_title}</span>
						<Br> 
						<span>${list.book_writer} : ${list.book_publisher}</span>
					</div>
				</li>
			</c:forEach>	
				<li class="Best_item">
					<div class="rank">랭크아이콘</div>
					<div class="img_box">
						<a href="#">사진 누르면 상세페이지 이동</a>
					</div>
					<div class="info_box">
						<span>책제목</span> <span>저자, 출판사</span>
					</div>
				</li>
				<li class="Best_item">
					<div class="rank">랭크아이콘</div>
					<div class="img_box">
						<a href="#">사진 누르면 상세페이지 이동</a>
					</div>
					<div class="info_box">
						<span>책제목</span> <span>저자, 출판사</span>
					</div>
				</li>
				<li class="Best_item">
					<div class="rank">랭크아이콘</div>
					<div class="img_box">
						<a href="#">사진 누르면 상세페이지 이동</a>
					</div>
					<div class="info_box">
						<span>책제목</span> <span>저자, 출판사</span>
					</div>
				</li>
				<li class="Best_item">
					<div class="rank">랭크아이콘</div>
					<div class="img_box">
						<a href="#">사진 누르면 상세페이지 이동</a>
					</div>
					<div class="info_box">
						<span>책제목</span> <span>저자, 출판사</span>
					</div>
				</li>
				<li class="Best_item">
					<div class="rank">랭크아이콘</div>
					<div class="img_box">
						<a href="#">사진 누르면 상세페이지 이동</a>
					</div>
					<div class="info_box">
						<span>책제목</span><Br> <span>저자, 출판사</span>
					</div>
				</li>
				<li class="Best_item">
					<div class="rank">랭크아이콘</div>
					<div class="img_box">
						<a href="#">사진 누르면 상세페이지 이동</a>
					</div>
					<div class="info_box">
						<span>책제목</span> <span>저자, 출판사</span>
					</div>
				</li>
				<li class="Best_item">
					<div class="rank">랭크아이콘</div>
					<div class="img_box">
						<a href="#">사진 누르면 상세페이지 이동</a>
					</div>
					<div class="info_box">
						<span>책제목</span> <span>저자, 출판사</span>
					</div>
				</li>
				<li class="Best_item">
					<div class="rank">랭크아이콘</div>
					<div class="img_box">
						<a href="#">사진 누르면 상세페이지 이동</a>
					</div>
					<div class="info_box">
						<span>책제목</span> <span>저자, 출판사</span>
					</div>
				</li>
				<li class="Best_item">
					<div class="rank">랭크아이콘</div>
					<div class="img_box">
						<a href="#">사진 누르면 상세페이지 이동</a>
					</div>
					<div class="info_box">
						<span>책제목</span> <span>저자, 출판사</span>
					</div>
				</li>
				
			</ul>


		</div>
	</div>
	<jsp:include page="./layout/footer.jsp"></jsp:include>
</body>
</html>
