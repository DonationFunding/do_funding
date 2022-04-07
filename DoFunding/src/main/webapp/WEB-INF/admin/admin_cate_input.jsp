<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="../common/common.jsp" %>
<%@include file ="admin_top.jsp" %>
 
<b>카테고리등록</b>
<form:form commandName="category"  method="post"  action="insert.cat">
<br>
	<table border="1" height="100">
		<tr>
			<td align="center">카테고리코드</td>
			<td><input type="text" name="code" value="${category.code}"></td>
		</tr>
		<tr>
			<td align="center">카테고리이름</td>
			<td><input type="text" name="cname" value="${category.cname}"></td>
		</tr>
		<tr>
			<td align="center">c_option1:키</td>
			<td><input type="text" name="c_option1" value="${category.c_option1}"></td>
			<td align="center">c_option1:값</td>
			<td><input type="text" name="c_option1_value" value="${category.c_option1}"></td>	
		</tr>
		<tr>
			<td align="center">c_option2:키</td>
			<td><input type="text" name="c_option2" value="${category.c_option2}"></td>
			<td align="center">c_option2:값</td>			
			<td><input type="text" name="c_option2" value="${category.c_option2}"></td>
		</tr>
	
		<tr> 
			<td colspan="2" align="center">
 			    <input type="submit" value="추가하기" > 
			</td>
		</tr>
 </table>
 </form:form>
<%@include file ="admin_bottom.jsp" %>