<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
</head>
<script type="text/javascript">
<<<<<<< HEAD
	function findIdcheck(){
		if ($('input[name=name]').val()==""){
=======
	function findIdcheck(myform){
	 	if (myform.name.value==""){
>>>>>>> refs/remotes/origin/do-pms
			alert("이름을 입력하세요.");
			$('input[name=name]').focus();
			return false;
		}
<<<<<<< HEAD
		if ($('input[name=birthday]').val()==""){
=======
		if (myform.birthday.value.length==0){
>>>>>>> refs/remotes/origin/do-pms
			alert("생년월일을 입력하세요");
			$('input[name=birthday]').focus();
			return false;
		} 
	}
</script>
<center>
<br>
<h3>아이디찾기</h3>
<br>
<<<<<<< HEAD
<form name="myform" action="findid.mem" method="post">
=======
<form action="findid.mem" method="post" name="myform">
>>>>>>> refs/remotes/origin/do-pms
	<div class="container">
    <table class="table" class="text-center">
	
	<tr align="center">
		<th class="text-center">
		       이름 : <input type="text" name="name">
		</th>
	</tr>
	<tr align="center">
		<th class="text-center">
		       생년월일 : <input type="date" name="birthday" style = "height : 30px;">
		</th>
	</tr>
	<tr>
		<td align="center"colspan="2">
			<input type="submit" value="아이디 찾기" class="btn btn-default btn-s	m" onclick="return findIdcheck()">
		</td>
	</tr>
</table>
</div>

</form>
</center>
<%@ include file="../common/common_bottom.jsp" %>