<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="../common/common.jsp" %>
<%@include file ="admin_top.jsp" %>
<center>
<br>
<b>카테고리등록</b>
<form:form commandName="cateBean"  method="post"  action="admin_cate_insert.ad">
<br>
	<table border="1" height="100">
		<tr>
			<td align="center">카테고리코드</td>
			<td><input type="text" name="code" value="${cateBean.code}"></td>
		</tr>
		<tr>
			<td align="center">카테고리이름</td>
			<td><input type="text" name="cname" value="${cateBean.cname}"></td>
		</tr>
		<tr> 
			<td colspan="2" align="center">
 			    <input type="submit" value="추가하기" > 
			</td>
		</tr>
 </table>
 </form:form>
</center> 
<%@include file ="admin_bottom.jsp" %>