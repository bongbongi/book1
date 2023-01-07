<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" 
crossorigin="anonymous">
<script src="https://kit.fontawesome.com/92e616dfba.js" crossorigin="anonymous"></script>
<title>회원가입</title>
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
.join-container{ 
	border: 1px solid gray;
	width: 500px;
	height: 100%;
	
	margin: 30px auto;
	
	/* display: flex;
	align-items: center;
	justify-content: center; */
}
table>tr,
table>td{
	text-align: center;
}
#mem_pw::placeholder{
	font-size:8px;
}
/* 아이디 사용 가능 여부 */
.id_ok{
color:#008000;
display: none;
}

.id_duplicate{
color:#ff0000; 
display: none;
}
.id_null{
color:#ff0000; 
display: none;
}
.pw_ok{
color:#008000;
display: none;
}

.pw_rewrite{
color:#ff0000; 
display: none;
}
.pw_null{
color:#ff0000; 
display: none;
}
.cellNum_ok{
color:#008000;
display: none;
}

.cellNum_duplicate{
color:#ff0000; 
display: none;
}
.cellNum_null{
color:#ff0000; 
display: none;
}
.join-input {
	width: 300px;
}
.zip {
	width: 150px;
}
</style>
</head>
<body>
	<form action="/mem/join" method="post">
		<div class="join-container">

			<div class="logo">
				<a href="/"><img src="../resources/logo.jpg" alt="로고"></a><br>
			</div>
			<div class="join">
					<table class="join-table">
						<th colspan="3" >
							<tr>
								<th >ID</th>
									<td colspan="2">
										<input type="text" class="join-input" name="mem_id" id="mem_id" onchange="checkId()" required>
										<span class="id_ok"><i class="fa-solid fa-check"></i></span>
										<span class="id_duplicate"><i class="fa-solid fa-x"></i></span>
										<span class="id_null"><i class="fa-solid fa-x"></i></span>
									</td>							
							</tr>
							<tr>
								<th>pw</th>
								<td>
									<input type="password" class="join-input" name="mem_pw" id="mem_pw" placeholder="영문(대소문자 구분), 숫자, 특수문자 조합, 9~12자리" onchange="checkPw()" required>
									<span class="pw_ok"><i class="fa-solid fa-check"></i></span>
									<span class="pw_rewrite"><i class="fa-solid fa-x"></i></span>
									<span class="pw_null"><i class="fa-solid fa-x"></i></span>
								</td>
							</tr>
							<tr>
								<th>NAME</th>
								<td><input type="text" class="join-input" name="mem_name" required></td>
							</tr>
							<tr>
								<th rowspan="3">address</th>
								<td colspan="2">
									<input type="text" class="join-input zip" id="postcode" name="mem_postzip" placeholder="우편번호" required> 
									<input type="button" class="join-input zip btn btn-outline-primary" onclick="execDaumPostcode()" value="우편번호 찾기">
								</td>
							</tr>
							<tr colspan="2">	
								<td ><input type="text" class="join-input" id="address" name="address" placeholder="주소" required></td>
							</tr>
							<tr>	
								<td  colspan="2">
									<input type="text" class="join-input" id="detailAddress" name="detailAddress" placeholder="상세주소" required>
									<input type="text" class="join-input" id="extraAddress" name="extraAddress" placeholder="참고항목">
								</td>	
							</tr>
							<tr>
								<th>age</th>
								<td><input type="text" class="join-input" name="mem_age" required></td>
							</tr>
							<tr>
								<th>gender</th>
								<td>
									<select class="join-input" name="mem_gender" required="required">
										<option value="null">선택해주세요</option>
										<option value="1">남자</option>
										<option value="2">여자</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>phone</th>
								<td>
									<input type="text" class="join-input" name="mem_cell_num" id="mem_cell_num" placeholder="숫자만 써주세요" onchange="checkCellNum()" required>
								        <span class="cellNum_ok"><i class="fa-solid fa-check"></i></span>
										<span class="cellNum_duplicate"><i class="fa-solid fa-x"></i></span>
										<span class="cellNum_null"><i class="fa-solid fa-x"></i></span>
								</td>
							</tr>
							<tr>
								<th>선호카테고리</th>
								<td>
									<select class="join-input" name="mno_cno" required="required">
										<option value="0" selected="selected">선택해주세요</option>
										<option value="1">소설</option>
										<option value="2">에세이</option>
										<option value="3">건강/취미</option>
										<option value="4">컴퓨터/모바일</option>
									</select>
								</td>
							</tr>
						</th>
					</table>
					<button type=submit" class="btn btn-outline-secondary">가입하기</button>
				</form>


			</div>

			<div>
				<p>이미 가입되어 있으신가요? <a href="/mem/loginPage">로그인하기</a></p>
			</div>
	</form>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
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
	var mem_pw = document.getElementById('mem_pw').value; //id값이 "id"인 입력란의 값을 저장
	console.log(mem_pw);
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