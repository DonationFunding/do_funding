<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="category_top.jsp"%>
<%@ include file="../common/common.jsp" %>


  <td colspan="6" align="center">
    <h4 align="center">카테고리 목록</h4>
	<center>
	<form method="get" action="list.cat">
		<select name="whatColumn">
			<option value="all">전체검색
			<option value="code">코드
			<option value="cname">카테고리명
		</select>
		<input type="text" name="keyword">
		<input type="submit" value="검색">
	</form>
</center>
		<table border="1"  width="500">
			<tr>
				<td  align="center">번호</td>
				<td  align="center">카테고리 코드</td>
				<td  align="center">카테고리명</td>
				<td  align="center">옵션1</td>
				<td  align="center">옵션2</td>
				<td  align="center">삭제</td>	
				<td  align="center">수정</td>	
				
			</tr>
        <c:forEach var="category" items="${list}">
					<tr>
						<td>${category.cnum}</td>
						<td>${category.code}</td>
						<td>${category.cname}</td>
						<td>${category.c_option1}</td>
						<td>${category.c_option2}</td>
						<td>
						<a href="delete.cat?cnum=${category.cnum}&pageNumber=${pageInfo.pageNumber}">삭제</a>
					    </td>
					    <td>
			            <a href="update.cat?cnum=${category.cnum}&pageNumber=${pageInfo.pageNumber}">수정</a>
			           </td>
					</tr>
			</c:forEach>	
		
		</table>
		<center>
	 ${pageInfo.pagingHtml}
    </center>	
		</td>
		<br>
 

	<%@include file="category_bottom.jsp"%>
	

	