<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


 <%@include file ="category_top.jsp" %>
 
 <td colspan="6" align="center">
  
  <b>카테고리등록</b>
  <form:form commandName="category"  method="post"  action="insert.cat">
	<table border="1" height="100">
		<tr>
			<td align="center">카테고리코드</td>
			<td><input type="text" name="code"></td>
		</tr>
		<tr>
			<td align="center">카테고리이름</td>
			<td><input type="text" name="cname"></td>
		</tr>
		<tr>
			<td align="center">c_option1</td>
			<td><input type="text" name="c_option1"></td>
		</tr>
		<tr>
			<td align="center">c_option2</td>
			<td><input type="text" name="c_option2"></td>
		</tr>
	
		<tr> 
			<td colspan="2" align="center">
 			    <input type="submit" value="추가하기"> 
			</td>
		</tr>
 </table>
 </form:form>
  </td>
  <%@include file ="category_bottom.jsp" %>
  
