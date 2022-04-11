<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
findid.jsp<br>
<form action="findidPro.jsp" method="post">
<table border="1">
	<tr>
		<td align="center" bgcolor="yellow">이름</td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td align="center" bgcolor="yellow">주민등록번호</td>
		<td>
			<input type="text" name="rrn1" maxlength="6" size="6"> - 
			<input type="text" name="rrn2" maxlength="7" size="7">		
		</td>
	</tr>
	<tr>
		<td align="center" bgcolor="orange" colspan="2">
			<input type="submit" value="아이디 찾기">
		</td>
	</tr>
</table>

</form>
