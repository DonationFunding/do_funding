<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
</head>
<script type="text/javascript">
	function findIdcheck(myform){
<<<<<<< HEAD
		if (myform.name.value==""){
=======
		if (myform.name.value.length==0){
>>>>>>> refs/remotes/origin/master
			alert("이름을 입력하세요.");
			myform.name.focus();
			return false;
		}
		if (myform.birthday.value.==""){
			alert("생년월일을 입력하세요");
			myform.birthday.focus();
			return false;
		}
	}
</script>
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
			<input type="submit" value="아이디 찾기" class="btn btn-default btn-sm" onclick="return findIdcheck(myform)">
		</td>
	</tr>
</table>
</div>

</form:form>
</center>
<%@ include file="../common/common_bottom.jsp" %>