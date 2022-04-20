<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp"%>
<style type="text/css">
.div2 {
	position: fixed;
	top: 250px;
	right: 30px;
	width: 200px;
	margin: 10px;
	background: #F8FFFF;
}
</style>

<script type="text/javascript">
	function ordcheck() {
		if (document.myform.name.value.length == "") {
			alert("이름을 입력하세요.");
			document.myform.name.focus();
			return false;
		}
		if (document.myform.hp1.value.length == "") {
			alert("전화번호를 입력하세요.");
			document.myform.hp1.focus();
			return false;
		}
		if (isNaN(document.myform.hp1.value)) {
			alert("전화번호는 숫자만 입력가능합니다");
			document.myform.hp1.select();
			return false;
		}
		if (document.myform.hp2.value.length == "") {
			alert("전화번호를 입력하세요.");
			document.myform.hp2.focus();
			return false;
		}
		if (isNaN(document.myform.hp2.value)) {
			alert("전화번호는 숫자만 입력가능합니다");
			document.myform.hp2.select();
			return false;
		}
		if (document.myform.hp3.value.length == "") {
			alert("전화번호를 입력하세요.");
			document.myform.hp3.focus();
			return false;
		}
		if (isNaN(document.myform.hp3.value)) {
			alert("전화번호는 숫자만 입력가능합니다");
			document.myform.hp3.select();
			return false;
		}
		if (document.myform.addr.value.length == "") {
			alert("주소를 입력하세요.");
			document.myform.addr.focus();
			return false;
		}
		if (document.myform.d_addr.value.length == "") {
			alert("상세주소를 입력하세요.");
			document.myform.d_addr.focus();
			return false;
		}
	}
</script>
<body>
	<!-- OrderMallController => order_order.jsp -->
	<br><br>
	<div align="center">
		<form name="myform" action="calculate.ord" >
			<!-- action -->
			<h2>주문 및 결제</h2>
			<h3>주문 정보</h3>
			<table>
				<tr>
					<th colspan="2">주문자명</th>
					<td colspan="4">${loginInfo.name}(${loginInfo.id})</td>
				</tr>
				<tr>
					<th>휴대폰 번호</th>
					<td>${loginInfo.hp1}-${loginInfo.hp2}-${loginInfo.hp3}</td>
				</tr>
				<tr>
					<th colspan="6">배송정보</th>
				</tr>
				<tr>
					<th colspan="2">받는 분</th>
					<td colspan="4">
						<input type="text" name=name value="${loginInfo.name}"><br> 
						<input type="text" name="hp1" size="3" value="${loginInfo.hp1}">- 
						<input type="text" name="hp2" size="4" value="${loginInfo.hp2}">-
						<input type="text" name="hp3" size="4" value="${loginInfo.hp3}">
					</td>
				</tr>
				<tr>
					<th colspan="2">배송지</th>
					<td colspan="4">
					<input type="text" name=address1 value="${loginInfo.address1} ${loginInfo.address2}"> 
					<input type="text" name="address2" placeholder="상세 주소"></td>
				</tr>
				<tr>
					<th colspan="2">배송 요청사항(선택)</th>
					<td colspan="4">
						<input type="text" name="del_request" placeholder="배송 요청사항을 입력하세요" size="40">
					</td>
				</tr>
				<tr>
					<th colspan="2">주문 요청사항(선택)</th>
					<td colspan="4">
						<input type="text" name="order_request" placeholder="주문 요청사항을 입력하세요" size="40">
					</td>
				</tr>
				<tr>
					<td>상품 번호</td>
					<td>상품명</td>
					<td>상품 옵션</td>
					<td>주문 수량</td>
					<td>단가</td>
					<td>금액</td>
				</tr>
				<c:forEach var="shopInfo" items="${sessionScope.shopLists }">
					<tr>
						<td align="center">${shopInfo.p_num }</td>
						<td align="center">${shopInfo.pname}</td>
						<td align="center">${shopInfo.option_content }</td>
						<td align="center">${shopInfo.qty }</td>
						<td align="center">${shopInfo.price }</td>
						<td align="center">${shopInfo.amount }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="6" >
						<a href="list.prd">추가주문</a> <!--메인 페이지  -->
					</td>
				</tr>
			</table>
	</div>
	<div class="div2">
		<h3>결제금액</h3>
	
		<tr>
			<td>총 금액</td>
			<td>${totalAmount}</td>
			<br>
		</tr>
		<tr>
			<td>배송비</td>
		<c:choose> 
			<c:when test="${totalAmount > 30000}">
				0
			</c:when> 
			<c:when test="${totalAmount > 0  and totalAmount < 30000 }">
				3000
			</c:when> 
			<c:otherwise>
				0
			</c:otherwise> 
		</c:choose> <br><br>
		</tr>
		<tr>
			<td>최종 결제금액: 
			<c:choose> 
				<c:when test="${totalAmount > 30000}">
				${totalAmount}
			</c:when> 
			<c:when test="${totalAmount > 0  and totalAmount < 30000 }">
				${totalAmount+3000}
			</c:when> 
			<c:otherwise>
				${totalAmount}
			</c:otherwise> 
			</c:choose> 
			</td>
		</tr>
		<br> <br> <input type="submit" name="btn1" value="결제하기" onclick="return ordcheck()">
		</form>	
	</div>	
</body>
<%@ include file="../common/common_bottom.jsp"%>	