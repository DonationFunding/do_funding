<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
</head>
<script type="text/javascript">
	function idcheck(myform){
		location.href="idfunction.mem?id="+myform.id.value;
	}
	function memcheck(myform){
		if (myform.id.value.length==0){
			alert("id를 입력하세요.");
			myform.id.focus();
			return false;
		}
		if (myform.id.value.length<3 || myform.id.value.length>=9){
			alert("id는 3~8자리 만 입력가능합니다.");
			myform.id.focus();
			return false;
		} 
		if (myform.password.value.length==0){
			alert("비밀번호를 입력하세요.");
			myform.password.focus();
			return false;
		}
		if (myform.password.value.length==10){
			alert("비밀번호는 10자리 미만 입력하세요.");
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
		if (myform.name.value.length>5){
			alert("이름은 5글자 이하로 입력하세요.");
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

<center>
<br>
<h3>회원가입</h3>
<br>
<form name="myform" action="insert.mem" method="post">
	<div class="container"> 
	<table class="table">
		<tr align="center">
		    <td width="33%">
		    </td>
			<th>아이디 :
				<input type="text" name="id" <c:if test="${param.id != null }">value="${param.id}"</c:if>>
				<input type="button" value="중복체크" onclick="return idcheck(myform)" class="btn btn-default btn-sm">
			</th>
			<td width="28%">
		     </td>
		</tr>
		<tr align="center">
		    <td></td>
			<th>
			    패스워드 : <input type="password" name="password">
			</th>
			<td></td>
		<tr>
		<tr align="center">
			<td></td>
			<th>
			    패스워드 확인 : <input type="password" name="repassword">
			</th>
			<td></td>
		<tr>
		<tr align="center">
			<td></td>
			<th>
			    이름 : <input type="text" name="name">
			</th>
			<td></td>
		<tr>
		<tr align="center">
			<td></td>
			<th>
			    생년월일 : <input type="date" name="birthday" style = "height : 30px;" >
			</th>
			<td></td>
		</tr>
		<tr>
			<td align="center" colspan="5">
			<input type="submit" value="가입하기" class="btn btn-default btn-sm" onclick="return memcheck(myform)"></td>
		</tr>
	</table>
	</div>
</form>
</center>
<%@ include file="../common/common_bottom.jsp" %>
