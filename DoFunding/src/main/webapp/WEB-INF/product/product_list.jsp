<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="product_top.jsp" %>

<center>
<h2>상품 리스트 화면</h2>
<h2>ProductList.jsp</h2>
<form action="list.prd" method="get">
	<select name="whatColumn">
		<option value="">선택
		<option value="name">상품명
		<option value="contents">설명
	</select>
	<input type="text" name="keyword">
	<input type="submit" value="검색">
</form>
<table border="1">
	<tr>
		<td align="right" colspan="6">
			<input type="button" value="추가하기" onclick="insert()">
		</td>
	</tr>
	<tr>
		<th>상품번호</th>
		<th>상품명</th>
		<th>설명</th>
		<th>가격</th>
		<th>삭제</th>
		<th>수정</th>
	</tr>
	<c:forEach var="product" items="${list}">
	<tr>
		<td>
			<c:out value="${product.num }" />
		</td>
		<td>
			<a href="detail.prd?num=${product.num }&pageNumber=${pageInfo.pageNumber }">${product.name}</a>
		</td>
		<td>${product.contents }</td>
		<td>${product.price }원</td>
		<td>삭제</td>
		<td>
			<input type="button" value="수정">
		</td>
	</tr>
	</c:forEach>
</table>
<br>
	${pageInfo.pagingHtml }
</center>
<br><br><br><br><br><br><br>



























<%@ include file="product_bottom.jsp" %>