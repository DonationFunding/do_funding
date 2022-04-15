<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
 <center>
<title>update.jsp</title>
<form:form commandName="memberBean" action="update.mem" method="post"> 
	<table border="1">
		<tr>
			<td align="center" width="130px">아이디 :</td>
			<td>
				<input type="text" name="id" <c:if test="${loginInfo.id != null}">value="${loginInfo.id }" readonly</c:if>>
			</td>
		</tr>
		<tr>
			<td align="center">패스워드 :</td>
			<td>
				<input type="password" name="password">
			</td>
		</tr>
		<tr>
			<td align="center">패스워드 확인:</td>
			<td><input type="password" name="repassword"></td>
		</tr>
		<tr>
			<td align="center">이름 :</td>
			<td>
				<input type="text" name="name" <c:if test="${loginInfo.name != null}">value="${loginInfo.name }" readonly</c:if>>
			</td>
		</tr>
		<tr>
			<td align="center">생년월일 :</td>
			<td>
				<input type="date" name="birthday" <c:if test="${loginInfo.birthday != null}">value="${loginInfo.birthday }" readonly</c:if>>
				<form:errors cssClass="err" path="birthday"/>
			</td>
		</tr>
		<tr>
			<td align="center">성별 :</td>
			<td>
				<input type="radio" name="gender" value="남">남
				<input type="radio" name="gender" value="여">여
				<form:errors cssClass="err" path="gender"/>
			</td>
		</tr>
		<tr>
			<td align="center">핸드폰 :</td>
			<td>
				<select name="hp1">
					<option value="010">010
					<option value="011">011
					<option value="016">016
					<option value="017">017
					<option value="018">018
					<option value="019">019
				</select> - 
				<input type="text" name="hp2" value="${loginInfo.hp2 }" size="4px"> - 
				<form:errors cssClass="err" path="hp2"/>
				<input type="text" name="hp3" value="${loginInfo.hp3 }" size="4px">
				<form:errors cssClass="err" path="hp3"/>
			</td>
		</tr>
		<tr>
			<td align="center">주소 :</td>
			<td>
				<input type="text" name="address1" value="${loginInfo.address1 }">
				<form:errors cssClass="err" path="address1"/>
			</td>
		</tr>
		<tr>
			<td align="center">상세주소 :</td>
			<td>
				<input type="text" name="address2" value="${loginInfo.address2 }" size="24px">
				<form:errors cssClass="err" path="address2"/>
			</td>
		</tr>
		<tr>
			<td align="center">결제 은행 :</td>
			<td>
				<select name="accountbank">
					<option value="국민은행">국민은행
					<option value="신한은행">신한은행
					<option value="농협">농협
					<option value="하나은행">하나은행
					<option value="SC제일">SC제일
					<option value="새마을금고">새마을금고
				</select> -
				<input type="text" name="account" value="${loginInfo.account }">
				<form:errors cssClass="err" path="account"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="변경하기"></td>
		</tr>
	</table>
</form:form>
</center>
<%@ include file="../common/common_bottom.jsp" %>