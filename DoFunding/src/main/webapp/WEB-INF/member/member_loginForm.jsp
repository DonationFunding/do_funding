<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>

<title>login.jsp</title>
<center>
<form action="login.mem" method="post">
	<table border="1">
		<tr>
			<td>
				아이디 : 
			</td>
			<td>
				<input type="text" name="id">
			</td>
		</tr>
		<tr>
			<td>
				패스워드 : 
			</td>
			<td>
				<input type="password" name="password">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="로그인">
				<input type="button" value="아이디/비밀번호 찾기" onclick="location.href='findid.mem'">
				<input type="button" value="회원가입" onclick="location.href='insert.mem'">
			</td>
		</tr>
	</table>
</form>
</center>
<%@ include file="../common/common_bottom.jsp" %>
