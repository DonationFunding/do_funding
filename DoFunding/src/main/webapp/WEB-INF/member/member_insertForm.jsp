<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
</head>

<center>
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
		</tr>
		<tr align="center">
			<th class="text-center">
			    패스워드 : <input type="password" name="password">
			    <form:errors cssClass="err" path="password"/>
			</th>
		<tr>
		<tr align="center">
			<th class="text-center">
			    패스워드 확인 : <input type="password" name="repassword">
			</th>
		<tr>
		<tr align="center">
			<th class="text-center">
			    이름 : <input type="text" name="name">
			    <form:errors cssClass="err" path="name"/>
			</th>
		<tr>
		<tr align="center">
			<th class="text-center">
			    생년월일 : <input type="date" name="birthday" style = "height : 30px;" >
			    <form:errors cssClass="err" path="birthday"/>
			</th>
		<tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="가입하기" class="btn btn-default btn-sm"></td>
		</tr>
	</table>
	</div>
</form:form>
</center>
<%@ include file="../common/common_bottom.jsp" %>
