<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<%@include file="admin_top.jsp"%>

<center>
    <h4 align="center">카테고리 목록</h4>
	<form method="get" action="admin_cate_list.ad">
		<select name="whatColumn">
			<option value="all">전체검색
			<option value="code">코드
			<option value="cname">카테고리명
		</select>
		<input type="submit" value="검색">
	</form>
<br>
		<table border="1"  width="500">
			<tr>
				<td  align="center">번호</td>
				<td  align="center">카테고리 코드</td>
				<td  align="center">카테고리명</td>
				<td  align="center">옵션1</td>
				<td  align="center">옵션2</td>
				<td  align="center">삭제</td>	
			</tr>
        <c:forEach var="category" items="${list}">
					<tr>
						<td>${category.cnum}</td>
						<td>${category.code}</td>
						<td>${category.cname}</td>
						<td>${category.c_option1}</td>
						<td>${category.c_option2}</td>
						<td>
							<a href="admin_cate_delete.ad?num=${category.cnum}&pageNumber=${pageInfo.pageNumber}">삭제</a>
					    </td>
					</tr>
			</c:forEach>			
		</table>	
<br>
	 ${pageInfo.pagingHtml}
</center>
<%@include file="admin_bottom.jsp"%>
	

	