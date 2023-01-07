<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" 
crossorigin="anonymous">
<title>Insert title here</title>
<style type="text/css">
body{
	text-align: center;
	margin:0 auto;
	width: 100%;
	padding-top : 150px;
}
.logo>a>img{
	width: 150px;
	height: 150px;
}
.login-container{
	border: 1px solid gray;
	width: 500px;
	height: 100%;
	
	margin: 30px auto;
}

.Mem-search>a>button{
	text-decoration: none;
	background-color: white;
	
	font-size: 15px;
	width: 100px;
	height: 43.5px;
	color : gray;
}
</style>
</head>
<body>
	<div class="Mem-search">
			<a href="/mem/MemIdSearch"><button>아이디<br>찾기</button></a>
			<a href="/mem/MemPwSearch"><button>비밀번호<br>찾기</button></a> 
	</div>
	<div class="login-container">
		<div class="logo">
			<a href="/"><img src="../resources/logo.jpg" alt="로고"></a><br>
		</div>
		<div class="login">
			<form action="/mem/MemPwSearch" method="post">
				<input type="text" placeholder="아이디" name="mem_id"><Br>
				<input type="text" placeholder="이름" name="mem_name"><Br>
				<input type="text" placeholder="휴대폰 번호" name="mem_cell_num"><br><br>
				<a><button type="submit" class="btn btn-outline-secondary">확인</button></a><br><br>
			</form>				
		</div>
	</div>
	<!-- 스크립트 -->
	<script type="text/javascript">
		const msg = '<c:out value="${msg}"/>';
		function result(){
			if (msg === '0' || msg==null) {
				alert("찾을 수 없습니다. 다시 입력해주세요!");
			} else {
				window.
			}
		}
		
	</script>
</body>
</html>