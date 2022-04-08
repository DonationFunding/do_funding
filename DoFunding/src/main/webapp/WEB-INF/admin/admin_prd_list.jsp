<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="admin_top.jsp"%>
<script type="text/javascript">
	function insert() {
		location.href = "insert.prd"; 
	}
	function update(p_num,pageNumber) {
		location.href = "update.prd?p_num="+p_num+"&pageNumber="+pageNumber; 
	}
	function delelte() {
		location.href = "insert.prd"; 
	}
	
</script>
<center>
	<h2>상품 리스트 화면</h2>
	<form action="adminlist.prd" method="get">
		<select name="whatColumn">
			<option value="">선택
			<option value="name">상품명
			<option value="contents">설명
		</select> 
		<input type="text" name="keyword"> 
		<input type="submit" value="검색">
	</form>
	<table border="1" width="800">
		<tr>
			<td colspan="3" align="center">
				<c:set var="now" value="<%=new java.util.Date()%>" />
				<c:set var="sysDate"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set>
				Today : ${sysDate} 								
			</td>
			<td align="right" colspan="8">
				<input type="button" value="추가하기" onclick="insert()">
			</td>
		</tr>
		<tr>
			<th  align="center">
				<input type="checkbox" name="allcheck" onclick="allRowCheck(this)">
			</th>
			<th>상품번호</th>
			<th>상품명</th>
			<th>image</th>
			<th>가격</th>
			<th>펀딩금액</th>
			<th>확정금액</th>
			<th>진행률</th>
			<th>마감일</th> 
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="product" items="${list}">
			<tr>
				<td align="center" >
					<input type="checkbox" name="rowcheck" value="${product.p_num } %>">
				</td>
				<td><c:out value="${product.p_num}" /></td>
				<td>
					<a href="detail.prd?num=${product.p_num}&pageNumber=${pageInfo.pageNumber }">${product.p_subject}</a>
				</td>
				<td>
					<img width="100" height="100" alt="<%=request.getContextPath() %>/resources/images/no_image.jpg"
					src="<%=request.getContextPath() %>/resources/images/${product.p_image}"><br>
				</td>
				<td>${product.p_origin_price}원</td>
				<td>${product.p_total_price}</td>
				<td>${product.p_end_price}</td>
				<td>${(product.p_total_price/product.p_end_price)*100} %</td>	
 				<td>
 					<fmt:parseDate value="${product.p_end_date}" var="dateValue" pattern="yyyy-MM-dd" />
 					<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd" />
 				</td>
				<td>
					<button onclick="update('${product.p_num}','${pageInfo.pageNumber }')">수정</button>
				</td>
				<td>
					<a href="delete.prd?p_num=${product.p_num}&pageNumber=${pageInfo.pageNumber }">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<br> ${pageInfo.pagingHtml }
<br>
</center>
<%@ include file="admin_bottom.jsp"%>