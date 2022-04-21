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
>>>>>>> refs/remotes/origin/do-pms
<center>
<<<<<<< HEAD
<br>
<h3>아이디찾기</h3>
<br>
<form:form commandName="memberBean" action="findid.mem" method="post">
	<div class="container">
    <table class="table" class="text-center">
	
	<tr align="center">
		<th class="text-center">
		       이름 : <input type="text" name="name">
			   <form:errors cssClass="err" path="name"/>
		</th>
=======
findid.jsp<br>
<form name="myform" action="findid.mem" method="post">
<table border="1">
	<tr>
		<td align="center">이름</td>
		<td>
			<input type="text" name="name">
		</td>
>>>>>>> refs/remotes/origin/do-pms
	</tr>
<<<<<<< HEAD
	<tr align="center">
		<th class="text-center">
		       생년월일 : <input type="date" name="birthday" style = "height : 30px;">
			   <form:errors cssClass="err" path="name"/>
		</th>
=======
	<tr>
		<td align="center">생년월일</td>
		<td>
			<input type="date" name="birthday">		
		</td>
>>>>>>> refs/remotes/origin/do-pms
	</tr>
	<tr>
		<td align="center"colspan="2">
<<<<<<< HEAD
			<input type="submit" value="아이디 찾기" class="btn btn-default btn-sm">
=======
			<input type="submit" value="아이디 찾기" onclick="return check(myform)">
>>>>>>> refs/remotes/origin/do-pms
		</td>
	</tr>
</table>
</div>

<<<<<<< HEAD
</form:form >
=======
</form>
>>>>>>> refs/remotes/origin/do-pms
</center>

<%@ include file="../common/common_bottom.jsp" %>
