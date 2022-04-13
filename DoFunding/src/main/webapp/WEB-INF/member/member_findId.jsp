<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<%@ include file="../common/common_top.jsp" %>
    <link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/kfonts2.css" rel="stylesheet">
<center>
findid.jsp<br>
<form:form commandName="memberBean" action="findid.mem" method="post">
<table border="1">
	<tr>
		<td align="center">이름</td>
		<td>
			<input type="text" name="name">
			<form:errors cssClass="err" path="name"/>
		</td>
	</tr>
	<tr>
		<td align="center">생년월일</td>
		<td>
			<input type="date" name="birthday">		
			<form:errors cssClass="err" path="birthday"/>
		</td>
	</tr>
	<tr>
		<td align="center"colspan="2">
			<input type="submit" value="아이디 찾기">
		</td>
	</tr>
</table>

</form:form>
</center>
<%@ include file="../common/common_bottom.jsp" %>
