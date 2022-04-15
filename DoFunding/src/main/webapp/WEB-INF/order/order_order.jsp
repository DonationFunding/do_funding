<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>
<%@ include file="../common/common_top.jsp"%>
<style type="text/css">

div2 {
	position: fixed;
	top: 250px;
	right: 30px;
	width: 200px;
	margin: 10px;
	background: #F8FFFF;
}
</style>
<script type="text/javascript">
	function nameCheck(){
 		if(document.myform.name.value.length==0){
 			alert("준비중입니다.");
 		}
	}
</script>
		

OrderMallController => order_order.jsp
<br>
<br>


<div1>
<h2>주문 및 결제</h2>
<h3>주문 정보</h3>
<ol>
	주문자명
	<td>${loginInfo.name}(${loginInfo.id})</td>
	<br>
	<td>휴대폰 번호</td>
	<td>${loginInfo.hp1}-${loginInfo.hp2}-${loginInfo.hp3}</td>
	<br>
</ol>

<form name="myform">
<h3>배송정보</h3>
		
			<ol>
				<td>받는 분</td>
				<br>
				<input type="text" name=name value="${loginInfo.name}">
				<br>
				<input type="text"
					value="${loginInfo.hp1}-${loginInfo.hp2}-${loginInfo.hp3}">
				<br>
				<br>
				<td>배송지</td>
				<br>
				<input type="text"
					value="${loginInfo.address1} ${loginInfo.address2}">
				<br>
				<input type="text" placeholder="상세 주소">
				<br>
				<br>
				<td>배송 요청사항(선택)</td>
				<br>
				<input type="text" placeholder="배송 요청사항을 입력하세요" size="40">
				<br>
			</ol>
		
		</form>
		<h3>
			주문 요청사항(선택)
			</h3>
				<ol>
					<input type="text" placeholder="주문 요청사항을 입력하세요" size="40">
					<br>
				</ol>
				<h3>
					상품 정보
					<h3>
						<ol>
							<table border="1">
								<tr>
									<td>이미지</td>
									<td></td>
									<td>상품명</td>
									<td></td>
									<td>옵션</td>
									<td></td>
									<td>주문 수량</td>
									<td></td>
									<td>단가</td>
									<td></td>
									<td>금액</td>
									<td></td>
								</tr>
							</table>
						</ol>

						<h4>배송 안내사항</h4>
						주문 확인 후 입금 계좌를 개별 안내드리며, 미입금 시 주문이 취소될 수 있습니다. <br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
</div1>

<div2>
<h3>결제금액</h3>
<tr>
	<td>상품금액</td>
	<br>
</tr>
<tr>
	<td>배송비</td>
	<br>
	<br>
</tr>
<tr>
	<td>총 금액: ${totalAmount }</td>
</tr>
<br>
<br>
<a href="calculate.mall">결제하기</a> <!-- calculate.mall=>CartCalculateController -->
</div2>

<%@ include file="../common/common_bottom.jsp"%>