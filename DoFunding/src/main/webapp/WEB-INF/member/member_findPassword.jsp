<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>
 <center>
findpwd.jsp <br>
<form action="findpw.mem" method="post">
<table border="1">
	<tr>
		<td align="center">아이디</td>
		<td><input type="text" name="id" <c:if test="${id != null}">value="${id }" readonly</c:if>></td>
	</tr>
	<tr>
		<td align="center">이름</td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td align="center">생년월일</td>
		<td>
			<input type="date" name="birthday">
		</td>
	</tr>
	<tr>
		<td align="center"colspan="2">
			<input type="submit" value="비밀번호찾기">
		</td>
	</tr>
</table>

</form>
</center>
<%@ include file="../common/common_bottom.jsp" %>
