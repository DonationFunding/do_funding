<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
</head>
<center>
<br>
<h3>회원정보 수정</h3>
<br>
<form action="update.mem" method="post"> 
	<div class="container">
    <table class="table" class="text-center">
    
		<tr aling="center">
			<th class="text-center">
			아이디 : <input type="text" name="id" <c:if test="${loginInfo.id != null}">value="${loginInfo.id }" readonly</c:if>>
			</th>
		</tr>
		<tr aling="center">
			<th class="text-center">
			패스워드 : <input type="password" name="password">
			</th>
		</tr>
		<tr aling="center">
			<th class="text-center">
			패스워드 확인 : <input type="password" name="repassword">
			</th>
		</tr>
		<tr aling="center">
			<th class="text-center">
			이름 : <input type="text" name="name" <c:if test="${loginInfo.name != null}">value="${loginInfo.name }" readonly</c:if>>
			</th>
		</tr>
		<tr aling="center">
			<th class="text-center">
			생년월일 : 
			 <c:set var="birthday">
				<fmt:parseDate value="${loginInfo.birthday}" var="dateValue" pattern="yyyy-MM-dd" />
				<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd" />	
			</c:set> 
				<input type="date" name="birthday" style = "height : 30px; " <c:if test="${loginInfo.birthday != null}">value="${birthday }" readonly</c:if>>
			</th>
		</tr>
		<tr aling="center">
			<th class="text-center">
			성별 : <input type="radio" name="gender" value="남" <c:if test="${loginInfo.gender eq '남' }">checked</c:if>>남
				  <input type="radio" name="gender" value="여" <c:if test="${loginInfo.gender eq '여' }">checked</c:if>>여
			</th>
		</tr>
		<tr aling="center">
			<th class="text-center">
			핸드폰 : <select name="hp1">
					<option value="010">010
					<option value="011">011
					<option value="016">016
					<option value="017">017
					<option value="018">018
					<option value="019">019
				</select> - 
				<input type="number" name="hp2" value="${loginInfo.hp2 }" size="4px"> - 
				<input type="number" name="hp3" value="${loginInfo.hp3 }" size="4px">
			</th>
		</tr>
		<tr aling="center">
			<th class="text-center">
			주소 : <input type="text" name="address1" value="${loginInfo.address1 }">
			</th>
		</tr>
		<tr aling="center">
			<th class="text-center">
			상세주소 :	<input type="text" name="address2" value="${loginInfo.address2 }" size="24px">
			</th>
		</tr>
		<tr aling="center">
			<th class="text-center">
			결제은행 : <select name="accountbank">
					<option value="국민은행">국민은행
					<option value="신한은행">신한은행
					<option value="농협">농협
					<option value="하나은행">하나은행
					<option value="SC제일">SC제일
					<option value="새마을금고">새마을금고
				</select> -
				<input type="number" name="account" value="${loginInfo.account }">
			</th>
		</tr>
				
		<tr>
			<td colspan="2" align="center"><input type="submit" value="변경하기" class="btn btn-default btn-sm"></td>
		</tr>
	</table>
	</div>
</form>
</center>
<%@ include file="../common/common_bottom.jsp" %>