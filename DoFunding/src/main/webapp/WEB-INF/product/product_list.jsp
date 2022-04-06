<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="product_top.jsp" %>
<style type="text/css">
.area{
 	height:130px;
 	
}
</style>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.rotator.js"></script>
<script type="text/javascript">
	$(function(){
		$('#rotator').rotator({ms:2000});	//이미지가 3초마다 알아서 바꿔줌..너무 편하고..
	}); //function
	
	function productInsert(){
		location.href = "productInsert.prd"; // ProductInsertController
	}
</script>

<body>
	<div>
		<div id="rotator" style="width: 100%; overflow: hidden;">
			<div class="area">
				<a><img
					src="<%=request.getContextPath()%>/resources/images/im0.jpg"
					width="50%" height="100%"></a>
			</div>

			<div class="area">
				<img src="<%=request.getContextPath()%>/resources/images/im1.jpg">
			</div>

			<div class="area">
				<img src="<%=request.getContextPath()%>/resources/images/im2.jpg">
			</div>

			<div class="area">
				<img src="<%=request.getContextPath()%>/resources/images/im4.jpg">
			</div>
		</div>
	</div>
	
	<h2>상품 리스트 화면</h2>
	<h2>ProductList.jsp</h2>
	<form action="productList.prd" method="get">
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
				<input type="button" value="추가하기" onclick="productInsert()">
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
		<c:if test="${requestScope.list eq null}">
		 <tr>
		 	<td>
		 	상품이 없습니다.
		 	</td>
		 </tr>	
		 </c:if>
		<c:if test="${requestScope.list ne null}">
				<c:forEach var="product" items="${list}">
					<tr>
						<td><c:out value="${product.num }" /></td>
						<td><a
							href="detail.prd?num=${product.num }&pageNumber=${pageInfo.pageNumber }">${product.name}</a>
						</td>
						<td>${product.contents }</td>
						<td>${product.price }원</td>
						<td>삭제</td>
						<td><input type="button" value="수정"></td>
					</tr>
				</c:forEach>
		</c:if>
	</table>
<br>
	${pageInfo.pagingHtml }		
	</td>
</body>




























<%@ include file="product_bottom.jsp" %>