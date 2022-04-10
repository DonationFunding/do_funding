<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="../common/common.jsp" %>
<%@include file ="admin_top.jsp" %>
<center>
<br>
<b>카테고리수정</b>
<form:form commandName="category"  method="post"  action="admin_cate_update.ad">
	<input type="hidden" name="cnum" value="${category.cnum}">
<br>
	<table border="1" height="100">
		<tr>
			<td align="center">카테고리코드</td>
			<td>
				<input type="text" name="code" value="${category.code}">
			</td>
		</tr>
		<tr>
			<td align="center">카테고리이름</td>
			<td><input type="text" name="cname" value="${category.cname}"></td>
		</tr>
		<tr> 
			<td colspan="2" align="center">
 			    <input type="submit" value="수정하기" > 
			</td>
		</tr>
 </table>
 </form:form>
</center>
<%@include file ="admin_bottom.jsp" %>