<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
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
findid.jsp<br>
<form name="myform" action="findid.mem" method="post">
<table border="1">
	<tr>
		<td align="center">이름</td>
		<td>
			<input type="text" name="name">
		</td>
	</tr>
	<tr>
		<td align="center">생년월일</td>
		<td>
			<input type="date" name="birthday">		
		</td>
	</tr>
	<tr>
		<td align="center"colspan="2">
			<input type="submit" value="아이디 찾기" onclick="return check(myform)">
		</td>
	</tr>
</table>

</form>
</center>
<%@ include file="../common/common_bottom.jsp" %>
