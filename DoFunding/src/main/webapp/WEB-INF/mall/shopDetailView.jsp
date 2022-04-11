<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>    
mall/shopDetailView.jsp<br>
<br> 
<a href="<%=request.getContextPath()%>+/order.mall">주문 목록</a> <br>
<a href="start.jsp">시작페이지</a> <br>
<a href="logout.jsp">로그아웃</a> <br>
<br>
<center>
	<h2>주문 상세 보기</h2>
	<table border="1">
		<tr>
			<td colspan="2" align="center">
				고객 :${loginInfo.name}
			</td>
			<td colspan="3">
				송장 번호:${oid}
			</td>
		</tr>
		<tr>
			<td colspan="5" align="center">
				배송지 :${loginInfo.address1} ${loginInfo.address2}
			</td>
		</tr>	
		<tr>
			<th>순번</th>
			<th>상품명(상품번호)</th>
			<th>수량</th>
			<th>단가</th>
			<th>가격</th>
		</tr>
		<c:forEach var="detail"  items="${detailList}"  varStatus="status">
			<tr>
				<th>${status.count}</th>
				<th>${detail.pname} (${detail.pnum})</th>
				<th>${detail.qty}</th>
				<th>${detail.price}</th>
				<th>${detail.amount}</th>
			</tr>
		</c:forEach>
	</table>
</center>
