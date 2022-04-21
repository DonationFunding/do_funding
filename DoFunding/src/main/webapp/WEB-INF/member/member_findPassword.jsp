<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<<<<<<< HEAD
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
</head>
<center>
<br>
<h3>비밀번호찾기</h3>
<br>
<form action="findpw.mem" method="post">
	<div class="container">
    <table class="table" class="text-center">
	<tr align="center">
		<th class="text-center">
		       아이디 : <input type="text" name="id" <c:if test="${id != null}">value="${id }" readonly</c:if>>
		<th>
=======
<script type="text/javascript">
	function check(myform){
		if (myform.name.value.length==0){
			alert("이름을 입력하세요.");
			myform.name.focus();
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
findpwd.jsp <br>
<form name="myform" action="findpw.mem" method="post">
<table border="1">
	<tr>
		<td align="center">아이디</td>
		<td><input type="text" name="id" <c:if test="${id != null}">value="${id }" readonly</c:if>></td>
>>>>>>> refs/remotes/origin/do-pms
	</tr>
	<tr align="center">
		<th class="text-center">
		       이름 : <input type="text" name="name">
		<th>
	</tr>
	<tr align="center">
		<th class="text-center">
		      생년월일 : <input type="date" name="birthday" style = "height : 30px;">
		<th>
	</tr>
	<tr>
		<td align="center"colspan="2">
<<<<<<< HEAD
			<input type="submit" value="비밀번호찾기" class="btn btn-default btn-sm">
=======
			<input type="submit" value="비밀번호찾기" onclick="return check(myform)">
>>>>>>> refs/remotes/origin/do-pms
		</td>
	</tr>
</table>
</div>
</form>
</center>
<%@ include file="../common/common_bottom.jsp" %>
