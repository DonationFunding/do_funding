<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./../common/common.jsp"%>	
mall\mallList.jsp
<br>

<h2 align="center">주문 하기</h2>
<table border="1" align="center">
	<tr>
		<td colspan="5" align="center">
			주문자 정보: ${loginInfo.name}(${loginInfo.id})	       
		</td>
	</tr>
	<tr>   
		<td>상품 번호</td>
		<td>상품명</td>
		<td>주문 수량</td>
		<td>단가</td>
		<td>금액</td>
	</tr>
	<c:forEach var="shopInfo" items="${sessionScope.shopLists }">
		<tr>
			<td align="center">${shopInfo.pnum }</td>
			<td align="center">${shopInfo.pname}</td>
			<td align="center">${shopInfo.qty }</td>
			<td align="center">${shopInfo.price }</td>
			<td align="center">${shopInfo.amount }</td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan="3" align="center">
			<a href="calculate.mall">결제하기</a> <!-- calculate.mall=>CartCalculateController -->
			<a href="list.prd">추가주문</a>
		</td>
		<td colspan="2">총 금액: ${totalAmount }</td> <!-- page,request,session -->
	</tr>
</table>
