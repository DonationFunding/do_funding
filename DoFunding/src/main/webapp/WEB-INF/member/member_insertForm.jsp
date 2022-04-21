<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<<<<<<< HEAD
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
</head>

=======
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
>>>>>>> refs/remotes/origin/do-pms
<center>
<<<<<<< HEAD
<br>
<h3>회원가입</h3>
<br>
<form:form commandName="memberBean" action="insert.mem" method="post"> 
	<div class="container">
    <table class="table" class="text-center">
    	     
		<tr align="center">
			<th class="text-center">
			    아이디 : <input type="text" name="id"> 
			    <form:errors cssClass="err" path="id"/>
			</th>		
=======
<form name="myform" action="insert.mem" method="post"> 
	<table border="1">
		<tr>
			<td align="center" width="130px">아이디 :</td>
			<td>
				<input type="text" name="id" <c:if test="${param.id != null }">value="${param.id}"</c:if>>
				<input type="button" value="중복체크" onclick="return idcheck(myform)">
			</td>
			
>>>>>>> refs/remotes/origin/do-pms
		</tr>
		<tr align="center">
			<th class="text-center">
			    패스워드 : <input type="password" name="password">
			    <form:errors cssClass="err" path="password"/>
			</th>
		<tr>
<<<<<<< HEAD
		<tr align="center">
			<th class="text-center">
			    패스워드 확인 : <input type="password" name="repassword">
			</th>
=======
			<td align="center">패스워드 :</td>
			<td>
				<input type="password" name="password">
			</td>
		</tr>
>>>>>>> refs/remotes/origin/do-pms
		<tr>
		<tr align="center">
			<th class="text-center">
			    이름 : <input type="text" name="name">
			    <form:errors cssClass="err" path="name"/>
			</th>
		<tr>
<<<<<<< HEAD
		<tr align="center">
			<th class="text-center">
			    생년월일 : <input type="date" name="birthday" style = "height : 30px;" >
			    <form:errors cssClass="err" path="birthday"/>
			</th>
=======
			<td align="center">이름 :</td>
			<td>
				<input type="text" name="name">
			</td>
		</tr>
>>>>>>> refs/remotes/origin/do-pms
		<tr>
<<<<<<< HEAD
=======
			<td align="center">생년월일 :</td>
			<td>
				<input type="date" name="birthday">
			</td>
		</tr>
>>>>>>> refs/remotes/origin/do-pms
		<tr>
<<<<<<< HEAD
			<td colspan="2" align="center">
			<input type="submit" value="가입하기" class="btn btn-default btn-sm"></td>
=======
			<td colspan="2" align="center"><input type="submit" value="가입하기" onclick="return check(myform)"></td>
>>>>>>> refs/remotes/origin/do-pms
		</tr>
	</table>
<<<<<<< HEAD
	</div>
</form:form>
=======
</form>
>>>>>>> refs/remotes/origin/do-pms
</center>
<%@ include file="../common/common_bottom.jsp" %>
