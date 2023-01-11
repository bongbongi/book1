<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
				crossorigin="anonymous">
			<script type="text/javascript" src="/resources/js/memberJoin.js"></script>
			<script type="text/javascript" src="/resources/js/boardComment.js"></script>
			<title>Insert title here</title>
			<link rel="stylesheet" type="text/css" href="/resources/css/mypage.css">

			<style type="text/css">
				.MypageModify {
					height: 700px;
					border: 1px solid gray;
					text-align: center;
					margin: 0 auto;
				}

				.MypageModify>input {
					margin: 5px;
				}

				#mem_pw::placeholder {
					font-size: 8px;
				}

				.btn-submit {
					margin: 20px;
				}

				.join-input {
					width: 300px;
				}

				.zip {
					width: 150px;
				}

				.table-striped {
					width: 200px;
					height: 200px;

				}

				.deleteTable {
					width: 400px;
					height: 200px;

				}

				.checkbox {
					margin: 0 auto;
				}

				/* 비밀번호, 핸드폰번호 사용 가능 여부 */

				.pw_ok {
					color: #008000;
					display: none;
				}

				.pw_rewrite {
					color: #ff0000;
					display: none;
				}

				.pw_null {
					color: #ff0000;
					display: none;
				}

				.cellNum_ok {
					color: #008000;
					display: none;
				}

				.cellNum_duplicate {
					color: #ff0000;
					display: none;
				}

				.cellNum_null {
					color: #ff0000;
					display: none;
				}

				.join-input {
					width: 300px;
				}

				.zip {
					width: 150px;
				}
				.button{
				text-align: center;
				margin-top: 50px;
				}

			</style>
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

							<div class="MypageModify mypage-right">
								<lable for="mem_id">ID</lable>
								<br> <input type="text" class="join-input" name="mem_id" value="${ses.mem_id}"
									id="mem_id" placeholder="아이디" onchange="checkId()" required>
								<Br>
								<lable for="mem_pw">PW</lable><br>
								<input type="password" class="join-input" name="mem_pw" id="mem_pw"
									value="${ses.mem_pw}" placeholder="영문(대소문자 구분), 숫자, 특수문자 조합, 9~12자리"
									onchange="checkPw()" required>
								<span class="pw_ok"><i class="fa-solid fa-check"></i></span>
								<span class="pw_rewrite"><i class="fa-solid fa-x"></i></span>
								<span class="pw_null"><i class="fa-solid fa-x"></i></span>
								<br>
								<lable for="mem_name">NAME</lable><br>
								<input type="text" class="join-input" name="mem_name" placeholder="이름" required>
								<br>
								<lable for="mem_postzip">ADDRESS</lable><br>

								<input type="text" class="join-input zip" id="postcode" name="mem_postzip"
									placeholder="우편번호" value="${ses.mem_postzip}" required>
								<input type="button" class="join-input zip btn btn-outline-primary"
									onclick="execDaumPostcode()" value="우편번호 찾기">
								<br>

								<input type="text" class="join-input" id="address" name="address" placeholder="주소"
									required>

								<br>

								<input type="text" class="join-input" id="detailAddress" name="detailAddress"
									placeholder="상세주소" required><br>
								<input type="text" class="join-input" id="extraAddress" name="extraAddress"
									placeholder="참고항목">
								<br>
								<lable for="mem_age">AGE</lable><br>
								<td><input type="text" class="join-input" name="mem_age" placeholder="나이"
										value="${ses.mem_age}" required>
									<br>
									<lable for="mem_gender">GENDER</lable><br>
									<select class="join-input" name="mem_gender" required="required">
										<option value="null">선택해주세요</option>
										<option value="1">남자</option>
										<option value="2">여자</option>
									</select>
									<br>
									<lable for="mem_cell_num">PHONE</lable><br>
									<input type="text" class="join-input" name="mem_cell_num" id="mem_cell_num"
										value="${ses.mem_cell_num}" placeholder="숫자만 써주세요" onchange="checkCellNum()"
										required>
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
						<c:when test="${content eq 'orderList'}">
							<div class="memberOrderList mypage-right">
								${ses.mem_id}님 주문/배송조회 화면입니다.
								<table class="table">
									<thead>
										<tr>
											<th scope="col">주문번호</th>
											<th scope="col">주문자</th>
											<th scope="col">주문상태</th>
											<th scope="col">주문날짜</th>
											<th scope="col">수령인</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list}" var="order">
											<tr>
												<th scope="row">${order.order_num}</th>
												<td>${ses.mem_id}</td>
												<td>${order.order_sta}</td>
												<td>${order.order_date }</td>
												<td>${order.order_recepient}</td>
											</tr>
										</c:forEach>

									</tbody>
									<div>
										<c:if test="${pgh.prev}">
											<a href="/mem/check?pageNo=${pgh.startPage-1}&qty=${pgh.pgvo.qty}">prev</a>
										</c:if>
										<c:forEach begin="${pgh.startPage }" end="${pgh.endPage }" var="i">
											<a href="/mem/check?pageNo=${i}&qty=${pgh.pgvo.qty}">${i} ｜ </a>
										</c:forEach>
										<c:if test="${pgh.next}">
											<a href="/mem/check?pageNo=${pgh.endPage+1}&qty=${pgh.pgvo.qty}">next</a>
										</c:if>
									</div>
								</table>
							</div>
						</c:when>
						<c:when test="${content eq 'buyList' }">
							<div class="mypage-right">
								${ses.mem_id}님 구매내역화면입니다.
								<table class="table">
									<thead>
										<tr>
											<th scope="col">주문번호</th>
											<th scope="col">주문자</th>
											<th scope="col">주문상태</th>
											<th scope="col">주문날짜</th>
											<th scope="col">수령인</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list}" var="order">
											<tr>
												<td>${order.order_num}</td>
												<td>${ses.mem_id}</td>
												<td>${order.order_sta}</td>
												<td>${order.order_date}</td>
												<td>${order.order_recepient}</td>
											</tr>
										</c:forEach>

									</tbody>
									<div>
										<c:if test="${pgh.prev}">
											<a href="/mem/check?pageNo=${pgh.startPage-1}&qty=${pgh.pgvo.qty}">prev</a>
										</c:if>
										<c:forEach begin="${pgh.startPage }" end="${pgh.endPage }" var="i">
											<a href="/mem/check?pageNo=${i}&qty=${pgh.pgvo.qty}">${i} ｜ </a>
										</c:forEach>
										<c:if test="${pgh.next}">
											<a href="/mem/check?pageNo=${pgh.endPage+1}&qty=${pgh.pgvo.qty}">next</a>
										</c:if>
								</table>
							</div>

						</c:when>
						
						<c:when test="${content eq 'boardList'}">
							<div class="mypage-right">
								<table class="table">
									<thead>
										<tr>
											<th scope="col">글번호</th>
											<th scope="col">제목</th>
											<th scope="col">카테고리</th>
											<th scope="col">글쓴이</th>
											<th scope="col">작성일자</th>
											<th scope="col">조회수</th>
										</tr>
									</thead>


									<c:forEach items="${list}" var="board">
										<c:choose>
											<c:when test="${ses.mem_auth == '0'|| ses.mem_id == board.brd_writer}">
												<tbody>
													<tr>
														<th scope="row">${board.brd_num}</th>
														<td><a
																href="/board/boardDetail?brd_num=${board.brd_num}">${board.brd_title}</a>
														</td>
														<td>${board.brd_category}</td>
														<td>${board.brd_writer}</td>
														<td>${board.brd_regdate}</td>
														<td>${board.brd_views}</td>
												
													</tr>
												</tbody>
											</c:when>
											
											<c:otherwise>
						<tr>
								<td>${board.brd_num}</td>			
								<td>


												<c:choose>
													<c:when test="${ses.mem_id eq board.brd_writer}">
														${board.brd_title}
													</c:when>
													<c:otherwise>
														${board.brd_title}
													</c:otherwise>
												</c:choose>
												</td>
												<td>${board.brd_category}</td>
												<c:choose>
													<c:when test="${ses.mem_id eq board.brd_writer}">
														<td>${board.brd_writer}</td>
													</c:when>
													<c:otherwise>
														<td>******</td>
													</c:otherwise>
												</c:choose>
												<td>${board.brd_regdate}</td>
												<td>${board.brd_views}</td>
												</tr>
											</c:otherwise>
										</c:choose>
									</c:forEach>


									<div>
										<c:if test="${pgh.prev}">
											<a
												href="/board/list?pageNo=${pgh.startPage-1}&qty=${pgh.pgvo.qty}&type=${pgh.pgvo.type}&keyword=${pgh.pgvo.keyword}">prev</a>
										</c:if>
										<c:forEach begin="${pgh.startPage }" end="${pgh.endPage }" var="i">
											<a
												href="/board/list?pageNo=${i}&qty=${pgh.pgvo.qty}&type=${pgh.pgvo.type}&keyword=${pgh.pgvo.keyword}">${i}
												｜ </a>
										</c:forEach>
										<c:if test="${pgh.next}">
											<a
												href="/board/list?pageNo=${pgh.endPage+1}&qty=${pgh.pgvo.qty}&type=${pgh.pgvo.type}&keyword=${pgh.pgvo.keyword}">next</a>
										</c:if>
									</div>
								</table>
								<!-- search -->

								<div class="col-sm-12 col-md-6">
									<form action="/board/list" method="get">
										<div class="input-group mb-3">
											<!-- 값을 별도 저장 -->
											<c:set value="${pgh.pgvo.type}" var="typed" />
											<select class="form-select" name="type">
												<option ${typed==null ? 'selected' :'' }>항목</option>
												<option value="t" ${typed eq 't' ? 'selected' :'' }>제목</option>
												<option value="c" ${typed eq 'c' ? 'selected' :'' }>내용</option>
												<option value="w" ${typed eq 'w' ? 'selected' :'' }>작성자</option>
											</select>
											<input class="form-control" type="text" name="keyword" placeholder="포함해서찾기"
												value="${pgn.pgvo.keyword }">
											<input type="hidden" name="pageNo" value="1">
											<input type="hidden" name="qty" value="${pgh.pgvo.qty }">
											<button type="submit" class="btn btn-success position-relative">
												결과
												<span
													class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
													${pgh.totalCount}개
													<span class="visually-hidden">unread messages</span></span>
											</button>
										</div>
									</form>
								</div>
								<a href="/board/register"><button class="btn btn-secondary">1대1문의 작성하기</button></a>
							</div>
						</c:when>
						<c:when test="${content eq 'delete' }">
							<div class="delete mypage-right">
								<h2>탈퇴 안내</h2>

								<div class="short">회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</div>
								<div class="long">사용하고 계신 아이디(${ses.mem_id})는 탈퇴할 경우 아이디에 대한 데이터 재사용 및 복구가 불가능합니다.</div>
								<div class="short">탈퇴후 복구가 불가하오니 신중하게 선택하시기 바랍니다.</div>
								<div class="long">탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.</div>
								<div class="short">회원정보 및 주소 등 개인형 서비스 이용기록은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.</div>
								<div class="long">탈퇴 후에도 게시판형 서비스에 등록한 게시물은 그대로 남아 있습니다.</div>
								<div class="short">
									게시글 및 댓글은 탈퇴 시 자동 삭제되지 않고 그대로 남아 있습니다.
									삭제를 원하는 게시글이 있다면 반드시 탈퇴 전 삭제하시기 바랍니다.
									탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, 게시글을 임의로 삭제해드릴 수 없습니다.
								</div>
								<div class="deleteTable">
									<table class="table table-striped">
										<tr>
											<td>개인정보</td>
											<td>개인정보 전체 삭제</td>
										</tr>
										<tr>
											<td>1대1문의게시판</td>
											<td>질문,답변 삭제되지 않음.</td>
										</tr>
									</table>
								</div>
								탈퇴 후에는 아이디 ${ses.mem_id}에 대한 데이터는 복구할 수 없습니다.
								게시판형 서비스에 남아 있는 게시글은 탈퇴 후 삭제할 수 없습니다.
								<form action="/mem/delete?mem_num=${ses.mem_num}" method="post">
									<input type="checkbox" class="checkbox" required>안내 사항을 모두 확인하였으며, 이에 모두 동의합니다.
									<br>
									<div class="button">
									<button type="submit" class="btn btn-secondary">탈퇴</button>
									</div>
								</form>
							</div>
						</c:when>
						<c:when test="${content eq 'boardRegister' }">
							<div class="main">
<form action="/board/register" method="post">
제목:<input type="text" name="brd_title" required><br>
작성자:<input type="text" name="brd_writer" value="${ses.mem_id}" readonly><br>
내용:<textarea rows="3" cols="30" name="brd_content"></textarea><br>
카테고리:   <select name="brd_category">
             <option>질문</option>
             <option>자유</option>
             <option>테스트</option>
           </select>
           

<div name="brd_mem_num" value="${ses.mem_num}" hidden></div>
<button type="submit" class="btn btn-secondary">작성하기</button>
</div>
						</c:when>
						<c:when test="${content eq 'boardDetail' }">
							<div class="main">
<table class="table table-striped">
   <tr>
      <th>번호</th>
      <td>${board.brd_num}</td>
   </tr>
   <tr>
      <th>제목</th>
      <td>${board.brd_title}</td>
   </tr>
   <tr>
      <th>작성자</th>
      <td>${board.brd_writer}</td>
   </tr>
   <tr>
      <th>작성일</th>
      <td>${board.brd_regdate}</td>
   </tr>
   <tr>
      <th>내용</th>
      <td>${board.brd_content}</td>
   </tr>
   <tr>
      <th>조회수</th>
      <td>${board.brd_views}</td>
   </tr>
</table>

<a href="/board/boardModify?brd_num=${board.brd_num}">수정</a><br>
<a href="/board/remove?brd_num=${board.brd_num}">삭제</a><br>
<a href="/board/list">1대1문의 리스트</a><br>

<div class="container">
      <div class="input-group my-3">
         <span class="input-group-text" id="cmtWriter">${ses.mem_id}</span>
         <input type="text" class="form-control" id="cmtText" placeholder="Test Add Comment ">
         <button class="btn btn-success" id="cmtPostBtn" type="button">Post</button>
      </div>
      <ul class="list-group list-group-flush" id="cmtListArea">
        <li class="list-group-item d-flex justify-content-between align-items-start">
          <div class="ms-2 me-auto">
            <div class="fw-bold">Writer</div>
            Content for Comment
          </div>
          <span class="badge bg-dark rounded-pill">modAt</span>
        </li>
      </ul>
   </div>
   
   <script type="text/javascript">
   const bnoVal = '<c:out value="${board.brd_num}" />';
   const id='<c:out value="${ses.mem_id}"/>'
   console.log(id);
   console.log(bnoVal);
   </script>
   <script type="text/javascript" src="/resources/js/boardComment.js"></script>
   <script type="text/javascript">
   getCommentList(bnoVal, id);
   </script>
</div>
						
						</c:when>
						<c:when test="${content eq 'boardModify' }">
							<div class="main">
<form action="/board/modify" method="post">
번호:<input type="text" name="brd_num" value="${board.brd_num}" readonly><br>
제목:<input type="text" name="brd_title" value="${board.brd_title}" required><br>
작성자:<input type="text" name="brd_writer" value="${board.brd_writer}" readonly><br>
작성일:<input type="text" name="brd_regdate" value="${board.brd_regdate}" readonly ><br>
내용:<textarea rows="3" cols="30" name="brd_content" required>${board.brd_content}</textarea><br>
<button type="submit" class="btn btn-secondary">수정</button>
</form>
</div>
						</c:when>
						
					</c:choose>
				</c:forEach>
			</div>
			<jsp:include page="../layout/footer.jsp"></jsp:include>
		</body>

		</html>