<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
</head>
<script type="text/javascript">
	function findPasswordcheck(myform){
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
<br>
<h3>비밀번호찾기</h3>
<br>
<form action="findpw.mem" method="post">
	<div class="container">
    <table class="table" class="text-center">
	<tr align="center">
	    <td width="35%">
		</td>
		<th>
		       아이디 : <input type="text" name="id" <c:if test="${id != null}">value="${id }" readonly</c:if>>
		<th>
		<td width="33%">
		</td>
	</tr>
	<tr align="center">
	    <td>
		</td>
		<th>
		       이름 : <input type="text" name="name">
		<th>
		<td>
		</td>
	</tr>
	<tr align="center">
	    <td>
		</td>
		<th>
		      생년월일 : <input type="date" name="birthday" style = "height : 30px;">
		<th>
		<td>
		</td>
	</tr>
	<tr>
		<td align="center" colspan="4">
			<input type="submit" value="비밀번호찾기" class="btn btn-default btn-sm" onclick="return findPasswordcheck(myform)">
		</td>
	</tr>
</table>
</div>
</form>
</center>
<%@ include file="../common/common_bottom.jsp" %>
