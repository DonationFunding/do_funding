<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>    
mall/shopList.jsp<br>
<br> 
<a href="start.jsp">시작페이지</a> <br>
<a href="logout.jsp">로그아웃</a> <br>
<br>
<center>
	<h2>주문 내역</h2>
	<table border="1">
		<tr>
			<td colspan="3" align="center">
				${loginInfo.name}(${loginInfo.id})
			</td>
		</tr>
		<tr>
			<th>주문 번호</th>
			<th>주문 일자</th>
			<th>주문보기</th>
		</tr>
		<c:forEach var="order" items="${orderList}">
			<tr>
				<th>${order.oid}</th>
				<th>${order.orderdate}</th>
				<th><a href="detailView.mall?oid=${order.oid}">상세보기</a></th>
			</tr>
		</c:forEach>
	</table>
</center>