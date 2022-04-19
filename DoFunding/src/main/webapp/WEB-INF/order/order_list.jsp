<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>

<div class="order-list">

	<h1 class="order-head">주문 내역</h1>
	<table class="od-1" border="1">
		<c:choose>
			<c:when test="${orderList == null}">
				<tr>
					<td colspan="8"><h3>주문 내역이 없습니다.</h3></td>
				</tr>
			</c:when>
			<c:otherwise>
				<div class="order-menu">
					<tr>
						<td colspan="3">${sessionScope.loginInfo.name}님의 주문 내역입니다.</td>
					</tr>
					<tr>
						<th>주문 번호</th>
						<th>결제 일자</th>
						<th>상세보기</th>
					</tr>
				</div>
				
				<c:forEach var="od" items="${orderList}">
					<div class="order-in">
						<tr align="center">
							<td>${od.o_num}</td>
							<td>${od.o_date}</td>
							<td>
								<a href="detailView.ord?oid=${ob.o_num}">상세보기</a>
							</td>
						</tr>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</div>
