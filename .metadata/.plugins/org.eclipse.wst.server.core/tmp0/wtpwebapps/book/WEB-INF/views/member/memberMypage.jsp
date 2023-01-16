<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script type="text/javascript" src="/resources/js/memberJoin.js"></script>
<script type="text/javascript" src="/resources/js/boardComment.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/mypage.css">
<link rel="stylesheet" type="text/css" href="/resources/css/mypageModify.css">
<link rel="stylesheet" type="text/css" href="/resources/css/mypageDelete.css">
<link rel="stylesheet" type="text/css" href="/resources/css/mypageOrderList.css">
<link rel="stylesheet" type="text/css" href="/resources/css/mypageBuyList.css">
<link rel="stylesheet" type="text/css" href="/resources/css/mypageBoardList.css">
<link rel="stylesheet" type="text/css" href="/resources/css/mypageBoardDetail.css">
<link rel="stylesheet" type="text/css" href="/resources/css/mypageBoardRegisterAndModify.css">
</head>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<script type="text/javascript">
		const ses = '<c:out value="${ses.mem_id}" />';
		if (ses == null || ses == '') {
			alert('로그인시 이용가능합니다. 메인 페이지로 이동합니다.');
			location.href = '/';
		}
	</script>
	<script type="text/javascript" src="/resources/js/boardComment.js"></script>
	<script type="text/javascript">
		getCommentList(bnoVal, id);
	</script>
	<div class="main">
		<!-- 왼쪽 메뉴 -->
		<div class="select">
			<table class="mypage-left">
				<tr>
					<td>
						<h4>${ses.mem_name}님<br>환영합니다!!
						</h4>
					</td>
				</tr>
				<tr>
					<td><a href="/mem/modify" class="box">회원정보수정</a></td>
				</tr>
				<tr>
					<td><a href="/mem/orderCheck?mem_num=${ses.mem_num}">주문/배송조회</a></td>
				</tr>
				<tr>
					<td><a href="/mem/buyCheck?mem_num=${ses.mem_num}">구매함</a></td>
				</tr>
				<tr>
					<td><a href="/board/list" class="box">1대1문의</a></td>
				</tr>
				<tr>
					<td><a href="/mem/delete" class="box Withdrawal">회원탈퇴</a></td>
				</tr>
			</table>
		</div>
		<!-- 오른쪽 div 구역 -->
		<c:forEach items="${content}" var="content">
			<c:choose>
				<c:when test="${content eq 'modify' || content == 'main' }">
					<form action="/mem/modify" method="post">
						<div class="MypageModify mypage-right">
							<h4>회원정보수정</h4>
							<input type="text" name="mem_num" value="${ses.mem_num}" hidden><br>
							<lable for="mem_id">ID</lable>
							<br> <input type="text" class="join-input" name="mem_id" value="${ses.mem_id}" id="mem_id" placeholder="아이디" onchange="checkId()" required> <Br>
							<lable for="mem_pw">PW</lable>
							<br> <input type="password" class="join-input" name="mem_pw" id="mem_pw" placeholder="영문(대소문자 구분X), 숫자, 특수문자 조합, 9~12자리" onchange="checkPw()" required> 
							<span class="pw_ok"><i class="fa-solid fa-check"></i></span> 
							<span class="pw_rewrite"><i class="fa-solid fa-x"></i></span> 
							<span class="pw_null"><i class="fa-solid fa-x"></i></span> <br>
							<lable for="mem_pwRe">PW Re</lable>
							<br> <input type="password" class="join-input" name="mem_pwRe" id="mem_pwRe" placeholder="비밀번호 확인을 위해 한번 더 입력해주세요" onchange="checkPwRe()" required> 
							<span class="pwRe_ok"><i class="fa-solid fa-check"></i></span>
							<span class="pwRe_rewrite"><i class="fa-solid fa-x"></i></span>
							<span class="pwRe_null"><i class="fa-solid fa-x"></i></span> <br>
							<lable for="mem_name">NAME</lable>
							<br> <input type="text" class="join-input" name="mem_name" placeholder="이름" value="${ses.mem_name}" required> <br>
							<lable for="mem_postzip">ADDRESS</lable>
							<br> <input type="text" class="join-input zip" id="postcode" name="mem_postzip" placeholder="우편번호" value="${ses.mem_postzip}" required> <input type="button" class="join-input zip btn btn-outline-primary" onclick="execDaumPostcode()" value="우편번호 찾기"> <br> <input type="text" class="join-input" id="address" name="address" placeholder="주소" value="${ses.mem_ad.substring(0,ses.mem_ad.indexOf('/'))}" required> <br> <input type="text" class="join-input" id="detailAddress" name="detailAddress" placeholder="상세주소" value="${ses.mem_ad.substring(ses.mem_ad.indexOf('/')+2,ses.mem_ad.lastIndexOf('/'))}" required><br> <input type="text" class="join-input" id="extraAddress" name="extraAddress" placeholder="참고항목" value="${ses.mem_ad.substring(ses.mem_ad.lastIndexOf('/')+1)}" readonly="readonly"> <br>
							<lable for="mem_age">AGE</lable>
							<br> <input type="text" class="join-input" name="mem_age" placeholder="나이" value="${ses.mem_age}" required> <br>
							<lable for="mem_cell_num">PHONE</lable>
							<br> <input type="text" class="join-input" name="mem_cell_num" id="mem_cell_num" value="${ses.mem_cell_num}" placeholder="숫자만 써주세요" onchange="checkCellNum()" required> 
							<span class="cellNum_ok"><i class="fa-solid fa-check"></i></span> 
							<span class="cellNum_duplicate"><i class="fa-solid fa-x"></i></span> 
							<span class="cellNum_null"><i class="fa-solid fa-x"></i></span> <br>
							<lable for="mno_cno">FAVORITE</lable>
							<br> <select class="join-input" name="mno_cno">
								<option value="novel">소설</option>
								<option value="essay">에세이</option>
								<option value="life">건강/취미</option>
								<option value="computer">컴퓨터/모바일</option>
								<option value="problem">문제집</option>
							</select> <Br> <br>
							<button type=submit " class="btn btn-outline-secondary btn-submit">수정하기</button>
						</div>
					</form>
				</c:when>
				<c:when test="${content eq 'orderList'}">
					<div class="memberOrderList mypage-right">
						<h4>주문/배송조회</h4>
						<table class="table">
							<thead>
								<tr>
									<th scope="col"><a href="#">주문번호</a></th>
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
						</table>
						<div>
							<c:if test="${pgh.prev}">
								<a href="/mem/orderCheck?pageNo=${pgh.startPage-1}&qty=${pgh.pgvo.qty}&mem_num=${ses.mem_num}">prev</a>
							</c:if>
							<c:forEach begin="${pgh.startPage }" end="${pgh.endPage }" var="i">
								<a href="/mem/orderCheck?pageNo=${i}&qty=${pgh.pgvo.qty}&mem_num=${ses.mem_num}">${i} ｜ </a>
							</c:forEach>
							<c:if test="${pgh.next}">
								<a href="/mem/orderCheck?pageNo=${pgh.endPage+1}&qty=${pgh.pgvo.qty}&mem_num=${ses.mem_num}">next</a>
							</c:if>
						</div>

					</div>
				</c:when>
				<c:when test="${content eq 'buyList' }">
					<div class="mypage-right">
						<h4>구매내역화면</h4>
						<table class="table ">
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
						</table>
						<div>
							<c:if test="${pgh.prev}">
								<a href="/mem/buyCheck?pageNo=${pgh.startPage-1}&qty=${pgh.pgvo.qty}&mem_num=${ses.mem_num}">prev</a>
							</c:if>
							<c:forEach begin="${pgh.startPage }" end="${pgh.endPage }" var="i">
								<a href="/mem/buyCheck?pageNo=${i}&qty=${pgh.pgvo.qty}&mem_num=${ses.mem_num}">${i} ｜ </a>
							</c:forEach>
							<c:if test="${pgh.next}">
								<a href="/mem/buyCheck?pageNo=${pgh.endPage+1}&qty=${pgh.pgvo.qty}&mem_num=${ses.mem_num}">next</a>
							</c:if>
						</div>
					</div>
				</c:when>
				<c:when test="${content eq 'orderList'}">
					<div class="memberOrderList mypage-right">

						<h4>주문/배송조회</h4>
						<table class="table">
							<thead>
								<tr>
									<th scope="col"><a href="#">주문번호</a></th>
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
						</table>
						<div>
							<c:if test="${pgh.prev}">
								<a href="/mem/orderCheck?pageNo=${pgh.startPage-1}&qty=${pgh.pgvo.qty}">prev</a>
							</c:if>
							<c:forEach begin="${pgh.startPage }" end="${pgh.endPage }" var="i">
								<a href="/mem/orderCheck?pageNo=${i}&qty=${pgh.pgvo.qty}">${i} ｜ </a>
							</c:forEach>
							<c:if test="${pgh.next}">
								<a href="/mem/orderCheck?pageNo=${pgh.endPage+1}&qty=${pgh.pgvo.qty}">next</a>
							</c:if>
						</div>

					</div>
				</c:when>
				<c:when test="${content eq 'buyList' }">
					<div class="mypage-right">
						<h4>구매내역화면</h4>
						<table class="table ">
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
						</table>
						<div>
							<c:if test="${pgh.prev}">
								<a href="/mem/buyCheck?pageNo=${pgh.startPage-1}&qty=${pgh.pgvo.qty}">prev</a>
							</c:if>
							<c:forEach begin="${pgh.startPage }" end="${pgh.endPage }" var="i">
								<a href="/mem/buyCheck?pageNo=${i}&qty=${pgh.pgvo.qty}">${i} ｜ </a>
							</c:forEach>
							<c:if test="${pgh.next}">
								<a href="/mem/buyCheck?pageNo=${pgh.endPage+1}&qty=${pgh.pgvo.qty}">next</a>
							</c:if>
						</div>
					</div>
				</c:when>

				<c:when test="${content eq 'boardList'}">
					<div class="mypage-right">
						<table class="table">
							<h4>1대1문의</h4>
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
												<td scope="row">${board.brd_num}</td>
												<td><a href="/board/boardDetail?brd_num=${board.brd_num}">${board.brd_title}</a></td>
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
											<td><c:choose>
													<c:when test="${ses.mem_id eq board.brd_writer}">
                                                   ${board.brd_title}
                                                </c:when>
													<c:otherwise>
                                                   ${board.brd_title}
                                                </c:otherwise>
												</c:choose></td>
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


						</table>
						<div>
							<c:if test="${pgh.prev}">
								<a href="/board/list?pageNo=${pgh.startPage-1}&qty=${pgh.pgvo.qty}&type=${pgh.pgvo.type}&keyword=${pgh.pgvo.keyword}">prev</a>
							</c:if>
							<c:forEach begin="${pgh.startPage }" end="${pgh.endPage }" var="i">
								<a href="/board/list?pageNo=${i}&qty=${pgh.pgvo.qty}&type=${pgh.pgvo.type}&keyword=${pgh.pgvo.keyword}">${i} ｜ </a>
							</c:forEach>
							<c:if test="${pgh.next}">
								<a href="/board/list?pageNo=${pgh.endPage+1}&qty=${pgh.pgvo.qty}&type=${pgh.pgvo.type}&keyword=${pgh.pgvo.keyword}">next</a>
							</c:if>
						</div>
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
									</select> <input class="form-control" type="text" name="keyword" placeholder="포함해서찾기" value="${pgn.pgvo.keyword }"> <input type="hidden" name="pageNo" value="1"> <input type="hidden" name="qty" value="${pgh.pgvo.qty }">
									<button type="submit" class="btn btn-success position-relative">
										결과 <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"> ${pgh.totalCount}개 <span class="visually-hidden">unread messages</span></span>
									</button>
								</div>
							</form>
						</div>
						<a href="/board/register"><button class="btn btn-secondary">1대1문의 작성하기</button></a>
					</div>
				</c:when>
				<c:when test="${content eq 'delete' }">
					<div class="delete mypage-right">
						<h4>탈퇴 안내</h4>

						<div class="short">회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</div>
						<div class="long">사용하고 계신 아이디(${ses.mem_id})는 탈퇴할 경우 아이디에 대한 데이터 재사용 및 복구가 불가능합니다.</div>
						<div class="short">탈퇴후 복구가 불가하오니 신중하게 선택하시기 바랍니다.</div>
						<div class="long">탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.</div>
						<div class="short">회원정보 및 주소 등 개인형 서비스 이용기록은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.</div>
						<div class="long">탈퇴 후에도 게시판형 서비스에 등록한 게시물은 그대로 남아 있습니다.</div>
						<div class="short">게시글 및 댓글은 탈퇴 시 자동 삭제되지 않고 그대로 남아 있습니다. 삭제를 원하는 게시글이 있다면 반드시 탈퇴 전 삭제하시기 바랍니다. 탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, 게시글을 임의로 삭제해드릴 수 없습니다.</div>
						<div class="deleteTableBox">
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
						탈퇴 후에는 아이디 ${ses.mem_id}에 대한 데이터는 복구할 수 없습니다. 게시판형 서비스에 남아 있는 게시글은 탈퇴 후 삭제할 수 없습니다.
						<form action="/mem/delete?mem_num=${ses.mem_num}" method="post">
							<input type="checkbox" class="checkbox" required> 안내 사항을 모두 확인하였으며, 이에 모두 동의합니다. <br>
							<div class="button">
								<button type="submit" class="btn btn-secondary">탈퇴</button>
							</div>
						</form>
					</div>
				</c:when>
				<c:when test="${content eq 'boardRegister' }">
					<div class="boardRegister mypage-right">
						<div class="boardRegisterBox">
							<form action="/board/register" method="post">
								<div class="brd_category">
									<label for="brd_category">카테고리</label> <select name="brd_category">
										<option>질문</option>
										<option>자유</option>
										<option>테스트</option>
									</select>
								</div>
								<div class="brd_titleAndWriter">
									<label for="brd_title">제목</label> <input type="text" name="brd_title" class="brd_title" required> <label for="brd_writer">작성자</label> <input type="text" name="brd_writer" value="${ses.mem_id}" readonly><br>
								</div>
								<div class="brd_content">
									<label for="brd_content">내용</label><br>
									<textarea rows="10" cols="100" name="brd_content"></textarea>
									<br>
								</div>

								<button type="submit" class="btn btn-secondary">작성하기</button>
								<div name="brd_mem_num" value="${ses.mem_num}"></div>
							</form>
						</div>
					</div>
				</c:when>
				<c:when test="${content eq 'boardDetail' }">
					<div class="mypage-right boardDetail">
						글번호 ${board.brd_num}
						<h2>${board.brd_title}</h2>
						<sapn class="boardDetail-writer">${board.brd_writer}</sapn>
						<span class="boardDetail-regdate">${board.brd_regdate}</span>
						<hr>
						<div class="boardDetail-content">${board.brd_content}</div>
						<Br> <a href="/board/boardModify?brd_num=${board.brd_num}">
							<button type="button" class="btn btn-success">수정</button>
						</a> <a href="/board/remove?brd_num=${board.brd_num}">
							<button type="button" class="btn btn-danger">삭제</button>
						</a><a href="/board/list">
							<button type="button" class="btn btn-outline-secondary">1대1문의 리스트 목록</button>
						</a> <br>

						<div class="container">
							<div class="input-group my-3">
								<span class="input-group-text" id="cmtWriter">${ses.mem_id}</span> <input type="text" class="form-control" id="cmtText" placeholder="Test Add Comment ">
								<button class="btn btn-success" id="cmtPostBtn" type="button">Post</button>
							</div>
							<ul class="list-group list-group-flush" id="cmtListArea">
								<li class="list-group-item d-flex justify-content-between align-items-start">
									<div class="ms-2 me-auto">
										<div class="fw-bold">Writer</div>
										Content for Comment
									</div> <span class="badge bg-dark rounded-pill">modAt</span>
								</li>
							</ul>
						</div>


						<script type="text/javascript">
							const bnoVal = '<c:out value="${board.brd_num}" />';
							const id = '<c:out value="${ses.mem_id}"/>'
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
					<div class="boardRegister mypage-right">
						<div class="boardRegisterBox">
							<form action="/board/modify" method="post">
								<input type="text" name="brd_num" value="${board.brd_num}" readonly hidden><br>

								<div class="brd_titleAndWriter">
									<label for="brd_title">제목</label> <input type="text" name="brd_title" class="brd_title" value="${board.brd_title}" required> <label for="brd_writer">작성자</label> <input type="text" name="brd_writer" value="${ses.mem_id}" value="${board.brd_writer}" readonly><br>
								</div>
								<div class="brd_regdate">
									<label for="brd_regdate">작성일</label> <input type="text" name="brd_regdate" value="${board.brd_regdate}" readonly><br>
								</div>
								<div class="brd_content">
									<label for="brd_content">내용</label><br> <input type="text" name="brd_content" class="brd_content" value="${board.brd_title}" required>

								</div>
								<button type="submit" class="btn btn-secondary btnModify">수정</button>
								<div name="brd_mem_num" value="${ses.mem_num}"></div>
							</form>
						</div>
					</div>
				</c:when>
			</c:choose>
		</c:forEach>
	</div>
	<jsp:include page="../layout/footer.jsp"></jsp:include>
	<script type="text/javascript">

	function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }
	
	function checkId(){
        var mem_id = document.getElementById('mem_id').value; //id값이 "id"인 입력란의 값을 저장
		console.log(mem_id);
        $.ajax({
            url:'/mem/idCheck', //Controller에서 요청 받을 주소
            type:'post', //POST 방식으로 전달
            data:{mem_id:mem_id},
            success:function(isOk){ //컨트롤러에서 넘어온 isOK값을 받는다 
                if(isOk == 'id_ok'){ //ok이면 가입 가능
                    $('.id_ok').css("display","inline-block"); 
                    $('.id_duplicate').css("display", "none");
					$('.id_null').css("display", "none");
                }else if(isOk =='id_null'){//input이 null값임. 입력 요청
					$('.id_ok').css("display","none"); 
                    $('.id_duplicate').css("display", "none");
					$('.id_null').css("display", "inline-block");
				} 
				else { //중복일 경우
                    $('.id_ok').css("display", "none");
                    $('.id_duplicate').css("display","inline-block");
					$('.id_null').css("display", "none");
                    // alert("아이디를 다시 입력해주세요");
                    $('#mem_id').val('');
                }
            },
			error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}	

        });
        };
        
        
        
    
    
        
	function checkPw(){
	 var mem_pw = document.getElementById('mem_pw').value; //pw값이 "pw"인 입력란의 값을 저장
	console.log("js mem_pw 출력 : "+mem_pw);
	$.ajax({
		url:'/mem/pwCheck', //Controller에서 요청 받을 주소
		type:'post', //POST 방식으로 전달
		data:{mem_pw:mem_pw},
		success:function(isOk){ //컨트롤러에서 넘어온 isOK값을 받는다 
			if(isOk == 'pw_ok'){ //ok이면 가입 가능
				$('.pw_ok').css("display","inline-block"); 
				$('.pw_rewrite').css("display", "none"); //정규식 어긋나면
				$('.pw_null').css("display", "none");
			}else if(isOk =='pw_null'){//input이 null값임. 입력 요청
				$('.pw_ok').css("display","none"); 
				$('.pw_rewrite').css("display", "none");
				$('.pw_null').css("display", "inline-block");
			} 
			else { //중복일 경우
				$('.pw_ok').css("display", "none");
				$('.pw_rewrite').css("display","inline-block");
				$('.pw_null').css("display", "none");
				// alert("아이디를 다시 입력해주세요");
				$('#mem_pw').val('');
			}
		},
		error:function(request,status,error){
		console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}	

	});
	};	
	
	function checkPwRe(){
	var mem_pwRe = document.getElementById('mem_pwRe').value; 
	console.log(mem_pw);
	console.log(mem_pwRe);
	$.ajax({
		url:'/mem/pwCheckRe', //Controller에서 요청 받을 주소
		type:'post', //POST 방식으로 전달
		data:{mem_pwRe:mem_pwRe,mem_pw:mem_pw},
		success:function(isOk){ //컨트롤러에서 넘어온 isOK값을 받는다 
			if(isOk == 'pwRe_ok'){ //ok이면 가입 가능
				$('.pwRe_ok').css("display","inline-block"); 
				$('.pwRe_rewrite').css("display", "none"); //정규식 어긋나면
				$('.pwRe_null').css("display", "none");
			}else if(isOk =='pwRe_null'){//input이 null값임. 입력 요청
				$('.pwRe_ok').css("display","none"); 
				$('.pwRe_rewrite').css("display", "none");
				$('.pwRe_null').css("display", "inline-block");
			} 
			else { //중복일 경우
				$('.pwRe_ok').css("display", "none");
				$('.pwRe_rewrite').css("display","inline-block");
				$('.pwRe_null').css("display", "none");
				// alert("아이디를 다시 입력해주세요");
				$('#mem_pwRe').val('');
			}
		},
		error:function(request,status,error){
		console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}	

	});
	};	
	
	function checkCellNum(){
        var mem_cell_num = document.getElementById('mem_cell_num').value; //id값이 "id"인 입력란의 값을 저장
		console.log(mem_cell_num);
        $.ajax({
            url:'/mem/cellNumCheck', //Controller에서 요청 받을 주소
            type:'post', //POST 방식으로 전달
            data:{mem_cell_num:mem_cell_num},
            success:function(isOk){ //컨트롤러에서 넘어온 isOK값을 받는다 
                if(isOk == 'cellNum_ok'){ //ok이면 가입 가능
                    $('.cellNum_ok').css("display","inline-block"); 
                    $('.cellNum_duplicate').css("display", "none");
					$('.cellNum_null').css("display", "none");
                }else if(isOk =='cellNum_null'){//input이 null값임. 입력 요청
					$('.cellNum_ok').css("display","none"); 
                    $('.cellNum_duplicate').css("display", "none");
					$('.cellNum_null').css("display", "inline-block");
				}
				else { //중복일 경우
                    $('.cellNum_ok').css("display", "none");
                    $('.cellNum_duplicate').css("display","inline-block");
					$('.cellNum_null').css("display", "none");
                    // alert("아이디를 다시 입력해주세요");
                    $('#mem_cell_num').val('');
                }
            },
			error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}	

        });
        };

	</script>
</body>

</html>