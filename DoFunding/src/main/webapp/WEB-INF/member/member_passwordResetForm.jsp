<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<%@ include file="../common/common.jsp" %>
<%@ include file="../common/common_top.jsp" %>
    <link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/kfonts2.css" rel="stylesheet">
<center>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.rotator.js">

</script>

<title>update.jsp</title>

<form:form commandName="memberBean" action="update.mem" method="post"> 
	<table border="1">
		<tr>
			<td align="center" width="130px">아이디 :</td>
			<td>
				<input type="text" name="id" <c:if test="${loginInfo.id != null}">value="${loginInfo.id }" readonly</c:if>>
				<form:errors cssClass="err" path="id"/>
			</td>
			
		</tr>
		<tr>
			<td align="center">패스워드 :</td>
			<td>
				<input type="password" name="password">
				<form:errors cssClass="err" path="password"/>
			</td>
		</tr>
		<tr>
			<td align="center">패스워드 확인:</td>
			<td><input type="password" name="repassword"></td>
		</tr>
		<tr>
			<td align="center">이름 :</td>
			<td>
				<input type="text" name="name" <c:if test="${loginInfo.name != null}">value="${loginInfo.name }" readonly</c:if>>
				<form:errors cssClass="err" path="name"/>
			</td>
		</tr>
		<tr>
			<td align="center">생년월일 :</td>
			<td>
				<input type="date" name="birthday" <c:if test="${loginInfo.birthday != null}">value="${loginInfo.birthday }" readonly</c:if>>
				<form:errors cssClass="err" path="birthday"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="변경하기"></td>
		</tr>
	</table>
</form:form>
</center>
<%@ include file="../common/common_bottom.jsp" %>