<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
</head>
<script type="text/javascript">
	var flag=true;
	function idchange(){
		document.myform.flag.value="";
	}
	function idcheck(myform){
		if (myform.id.value.length==0){
			alert("아이디를 입력하세요.");
			myform.id.focus();
			return false;
		}
		location.href="idfunction.mem?id="+myform.id.value;
	}
	function memcheck(myform){
		if (myform.id.value.length==0){
			alert("아이디를 입력하세요.");
			myform.id.focus();
			return false;
		}
		if (myform.id.value.length<3 || myform.id.value.length>=9){
			alert("아이디는 3~8자리 만 입력가능합니다.");
			myform.id.focus();
			return false;
		}
		if (myform.flag.value==""){
			flag=true;
		}
		if (myform.flag.value=="true"){
			flag=false;
		}
		if(flag){
			alert("아이디 중복체크가 누락되었습니다.")
			return false;
		}
		if (myform.password.value.length==0){
			alert("비밀번호를 입력하세요.");
			myform.password.focus();
			return false;
		}
		if (myform.password.value.length==10){
			alert("비밀번호는 10자리 미만으로 입력하세요.");
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
			alert("생년월일을 입력하세요.");
			myform.birthday.focus();
			return false;
		}
		flag=true;
		
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
				<input type="text" name="id" <c:if test="${memBean.id != null }">value="${memBean.id}"</c:if> onchange="idchange()">
				<input type="hidden" value="${flag }" name="flag">
				<input type="button" value="중복체크" onclick="return idcheck(myform)" class="btn btn-default btn-sm">
			</th>
			<td width="28%">
		     </td>
		</tr>
		<tr align="center">
		    <td></td>
			<th>
			    비밀번호 : <input type="password" name="password" value="${memBean.password}">
			    <span id=""></span>
			</th>
			<td></td>
		<tr>
		<tr align="center">
			<td></td>
			<th>
			    비밀번호 확인 : <input type="password" name="repassword" value="${memBean.password}">
			</th>
			<td></td>
		<tr>
		<tr align="center">
			<td></td>
			<th>
			    이름 : <input type="text" name="name" value="${memBean.name}">
			</th>
			<td></td>
		<tr>
		<tr align="center">
			<td></td>
			<th>
			    생년월일 : <input type="date" name="birthday" value="${memBean.birthday }" style = "height : 30px;" >
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
