<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css/mypage.css">
</head>
<body>
<jsp:include page="../layout/header.jsp"></jsp:include>
    <div class="main">
        <div class="select">
            <table>
                <tr>
                    <td>
                        <h4>${ses.mem_name}님<br>환영합니다!!</h4>
                    </td>
                </tr>
                <tr>
                    <td><a href="/mem/modify" class="box">회원정보수정</a></td>
                </tr>
                <tr>
                    <td><a href="/mem/orderCheck?mem_num=${ses.mem_num}" class="box">주문/배송조회</a></td>
                </tr>
                <tr>
                    <td><a href="/mem/buyCheck?mem_num=${ses.mem_num}" class="box">구매함</a></td>
                </tr>
                <tr>
                    <td><a href="/board/list" class="box">1대1문의</a></td>
                </tr>
                <tr>
                    <td><a href="/mem/delete" class="box Withdrawal">회원탈퇴</a></td>
                </tr>
            </table>
        </div>     
    
	<c:forEach items="${content}" var="content">
		<c:choose>
			<c:when test="${content eq 'modify' || content == 'main' }">
				<div class="memberModify mypage-right">
					<form action="/mem/modify" method="post">		
						<input type="text" name="mem_num" value="${ses.mem_num}" hidden><br>
						아이디:<input type="text" name="mem_id" value="${ses.mem_id}" ><br>
						비밀번호:<input type="password" name="mem_pw" value="${ses.mem_pw}" ><br>
						주소:<input type="text" name="mem_ad" value="${ses.mem_ad}" ><br>
						핸드폰번호:<input type="text" name="mem_cell_num" value="${ses.mem_cell_num}" ><br>
						선호카테고리번호:<input type="text" name="mno_cno" value="${ses.mno_cno}" ><br>
						<button type="submit">수정하기 !</button>
					</form>
				</div>
	
			</c:when>
		</c:choose>
	</c:forEach>
	</div>
<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>