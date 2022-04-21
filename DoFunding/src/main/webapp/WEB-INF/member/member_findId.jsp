<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
</head>
<center>
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
	</tr>
	<tr align="center">
		<th class="text-center">
		       생년월일 : <input type="date" name="birthday" style = "height : 30px;">
			   <form:errors cssClass="err" path="name"/>
		</th>
	</tr>
	<tr>
		<td align="center"colspan="2">
			<input type="submit" value="아이디 찾기" class="btn btn-default btn-sm">
		</td>
	</tr>
</table>
</div>

</form:form >
</center>

<%@ include file="../common/common_bottom.jsp" %>
