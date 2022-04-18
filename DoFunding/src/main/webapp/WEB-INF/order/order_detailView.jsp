<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>    

<div class="order-detail">

	<div class="od-head">
		<h1>주문 상세 내역</h1>
	</div>
	<table class="od-table" border="1">
		<div class="od-menu">
			<tr>
				<th colspan="2">상품명</th>
				<th>가격</th>
				<th>수량</th>
				<th>옵션</th>
				<th>결제금액</th>
				<th>배송현황</th>
			</tr>
		</div>
		<div class="od-in">
			<c:forEach var="odb" items="${detailList}">
				<tr>
					<td>${odb.pname}</td>
					<td>${odb.price}</td>
					<td>${odb.qty}</td>
					<td>${odb.option}</td>
					<td>${odb.amount}</td>
					<td>${odb.deliver == 0?"배송준비중":
							odb.deliver == 1?"배송중":"배송완료"}</td>
					<c:choose>
						<c:when test="${odb.deliver != 0}">
							<td>
								<button class="btn-default-disable" disabled="disabled">주문취소</button>
								<br>
								<button class="btn-default-disable" disabled="disabled">주문변경</button>
								<br>
							</td>
						</c:when>
						<c:otherwise>
							<td>
								<button class="btn-default-order_cancel" onclick="location.href='#'+ ${odb.o_id}">주문취소</button>
								<br>
								<button class="btn-default-disable" disabled="disabled">주문변경</button>
							</td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>	
		</div>
	</table>
</div>
