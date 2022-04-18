<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
<title>login.jsp</title>
<center>
<form action="login.mem" method="post">
<div class="container">
<table class="table" class="text-center">
        <h4>로그인</h4>
		<tr align="center">
			<td>
				아이디 : 	<input type="text" name="id">
			</td>

		</tr>
		<tr  align="center">
			<td>
				패스워드 : <input type="password" name="password">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="로그인">
				<input type="button" value="아이디/비밀번호 찾기" onclick="location.href='findid.mem'">
				<input type="button" value="회원가입" onclick="location.href='insert.mem'">
			</td>
		</tr>
	</table>
	</div>
</form>
</center>
<%@ include file="../common/common_bottom.jsp" %>
