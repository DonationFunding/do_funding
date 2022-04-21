<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<script type="text/javascript">
	function idcheck(myform){
		location.href="idfunction.mem?id="+myform.id.value;
	}
	function check(myform){
		if (myform.id.value.length==0){
			alert("id를 입력하세요.");
			myform.id.focus();
			return false;
		}
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
		if (myform.name.value.length==0){
			alert("이름을 입력하세요.");
			myform.id.focus();
			return false;
		}
		if (myform.birthday.value.length==""){
			alert("생년월일을 입력하세요");
			myform.birthday.focus();
			return false;
		}
		
	}
</script>
<title>insert.jsp</title>
<center>
<form name="myform" action="insert.mem" method="post"> 
	<table border="1">
		<tr>
			<td align="center" width="130px">아이디 :</td>
			<td>
				<input type="text" name="id" <c:if test="${param.id != null }">value="${param.id}"</c:if>>
				<input type="button" value="중복체크" onclick="return idcheck(myform)">
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
				<input type="text" name="name">
			</td>
		</tr>
		<tr>
			<td align="center">생년월일 :</td>
			<td>
				<input type="date" name="birthday">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="가입하기" onclick="return check(myform)"></td>
		</tr>
	</table>
</form>
</center>
<%@ include file="../common/common_bottom.jsp" %>
