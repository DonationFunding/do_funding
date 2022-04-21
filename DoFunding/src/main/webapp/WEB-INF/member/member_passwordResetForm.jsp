<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<script type="text/javascript">
	function check(myform){
		if (myform.password.value.length==0){
			alert("비밀번호를 입력하세요.");
			myform.password.focus();
			return false;
		}
		if (myform.repassword.value != myform.password.value){
			alert("비밀번호가 일치하지 않습니다.");
			myform.repassword.focus();
			return false;
		}
	}
</script>
<center>
<title>update.jsp</title>
<form name="myform" action="resetpw.mem" method="post"> 
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
		<c:set var="birthday">
				<fmt:parseDate value="${loginInfo.birthday}" var="dateValue" pattern="yyyy-MM-dd" />
				<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd" />	
		</c:set> 
		<tr>
			<td align="center">생년월일 :</td>
			<td>
				<input type="date" name="birthday" <c:if test="${loginInfo.birthday != null}">value="${birthday }" readonly</c:if>>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="변경하기" onclick="return check(myform)"></td>
		</tr>
	</table>
</form>
</center>
<%@ include file="../common/common_bottom.jsp" %>