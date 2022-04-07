<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp"%>
<script type="text/javascript">
	function insert(){

		location.href="insert.cat"; 
	}

	
</script>


 <%@include file ="category_top.jsp" %>
 
 <td colspan="6" align="center">
  
  <b>카테고리등록</b>
  <form:form commandName="category"  method="post"  action="insert.cat">
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
			<td align="center">c_option1</td>
			<td><input type="text" name="c_option1" value="${category.c_option1}"></td>
		</tr>
		<tr>
			<td align="center">c_option2</td>
			<td><input type="text" name="c_option2" value="${category.c_option2}"></td>
		</tr>
	
		<tr> 
			<td colspan="2" align="center">
 			    <input type="submit" value="추가하기" onClick="insert()"> 
			</td>
		</tr>
 </table>
 </form:form>
  </td>
  <%@include file ="category_bottom.jsp" %>
  
