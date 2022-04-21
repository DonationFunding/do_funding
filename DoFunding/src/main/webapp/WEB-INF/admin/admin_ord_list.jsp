<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="admin_top.jsp"%>

<style>
	.order-detail {
		background: #fffcf6;
		font: 14px Malgun Ghothic,"맑은고딕",sans-serif;
    	color: #555;
    	min-width:320px;
	}
</style>
<center>
<div class="order-list">
	<h1 class="order-head">주문 내역</h1>
	<table class="od-1" border="1">
		<c:choose>
			<c:when test="${orderList == null}">
				<tr>
					<td colspan="3"><h3>주문 내역이 없습니다.</h3></td>
				</tr>
			</c:when>
			<c:otherwise>
				<div class="order-menu">
					<tr>
						<th>주문 번호</th>
						<th>결제 일자</th>
						<th>상세보기</th>
					</tr>
				</div>
				
				<c:forEach var="order" items="${orderList}">
					<div class="order-in">
						<tr align="center">
							<td>${order.o_num}</td>
							<td>${order.o_date}</td>
							<td>
								<a href="admin_ord_detail.ad?o_num=${order.o_num}">상세보기</a>
							</td>
						</tr>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</div>
</center>
<%@ include file="admin_bottom.jsp"%>