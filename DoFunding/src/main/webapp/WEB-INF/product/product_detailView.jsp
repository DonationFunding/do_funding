<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp"%>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
</head>
<style type="text/css">
a:hover {
	color: #ff3;
}
</style>
<script type="text/javascript">
	function insert(){
		location.href = "insert.prd"; // ProductInsertController
	}
	function like(){
		document.likeform.submit();
	}

</script>
<center>
    <h3>펀딩 상세 화면(${productBean.p_num }/${pageNumber })</h3>
    <div class="container">
    <table class="table" class="text-center">
    	<tr>
    		<td rowspan="10" align="center">
    			<img width=400 height=350  src="<%=request.getContextPath() %>/resources/images/${productBean.p_image}" alt="<%=request.getContextPath() %>/resources/images/no_image.jpg" >
    			<%-- <img src="<%=application.getContextPath()%>/resources/${productBean.image}" width=50 height=50> --%>
    		</td>
    	</tr>
    	<tr>
    		<th>상품명</th>
    		<td>${productBean.p_subject }</td>
    	</tr>
    	<tr>
    		<th>가격</th>
    		<td>${productBean.p_origin_price }원</td>
    	</tr>
    	<tr>
    		<th>설명</th>
    		<td>${productBean.p_content }</td>
    	</tr>
<c:set var="p_start_date">
	<fmt:parseDate value="${productBean.p_start_date}" var="dateValue" pattern="yyyy-MM-dd"/>
	<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd" />
</c:set> 
<c:set var="p_end_date">
	<fmt:parseDate value="${productBean.p_end_date}" var="dateValue" pattern="yyyy-MM-dd"/>
	<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd" />
</c:set> 
<%-- <c:set var="p_end_date"><fmt:formatDate value="${productBean.p_end_date}" pattern="yyyy-MM-dd" /></c:set> 	
 --%>    	<tr>
    		<th>펀딩 기간</th>
    		<td>${p_start_date}~${p_end_date}</td>
    	</tr>
    	
    	<tr>
    		<th>진행상황</th>
    		<td>${(productBean.p_total_price/productBean.p_end_price)*100} %</td>
    	</tr>
    	
<!-- add.mall => mall.controller.CartAddController -->
<form method="post" action="order.ord">
    	<tr>
    		<th>옵션</th>
    		<td>
    			<select name="option1">
    				<c:forEach var="optionBean" items="${optionList}">
    					<option value="${optionBean.option_no}">${optionBean.option_content}</option>
    				</c:forEach>
    			</select>
    		</td>
    	</tr>
 
    	<tr>
    		<th>주문수량</th>
    		<td>
    				<input type="hidden" name="p_num" value="${productBean.p_num }">
    				<input type="hidden" name="p_subject" value="${productBean.p_subject }">
    				<input type="hidden" name="p_origin_price" value="${productBean.p_origin_price }">
    				<input type="hidden" name="option_no" value="${optionBean.option_no}">
    				<input type="hidden" name="option_content" value="${optionBean.option_content}">
	    			<input type="text" name="o_qty">
	    			
<!-- 현재날짜 -->
<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="sysDate"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set> 
	    			<input type="submit" value="주문" class="btn btn-default btn-sm" <c:if test="${sysDate>productBean.p_end_date}">disabled</c:if>>
	    			<input type="submit" value="주문1" class="btn btn-default btn-sm" <c:if test="${sysDate>productBean.p_end_date}"></c:if>>
    		</td>   		
    	</tr>
 </form>	
    	
    	<tr>
    	 <th>찜하기<th>

				<form name="likeform" action="detail.prd" method="post"> <!-- form  -->
					<input type="hidden" name= "p_num" value="${productBean.p_num}"/>
					<input type="hidden" name= "like_check" value="${like_check}"/>
					<input type="hidden" name= "pageNumber" value="${pageNumber}"/>

				<c:if test = "${loginInfo != null}">
					<c:if test="${like_check == 1}"><!--좋아요  -->
						<input type="image"
							src="<%=request.getContextPath()%>/resources/images/heart_2.png" width="20px" height="20px" 
							onclick="like()">
					</c:if>
					<c:if test="${like_check == 0}"><!--좋아요x  -->
						<input type="image"
							src="<%=request.getContextPath()%>/resources/images/heart_1.png" width="20px" height="20px"
							onclick="like()">
					</c:if>
				</c:if>
				</form>
		</tr>
		<tr>
    		<td colspan="3">
    			<a href="list.prd?pageNumber=${pageNumber }">상품 리스트</a>
    		</td>
    	</tr>
    </table>
    </div>
  </center>

<%@ include file="../common/common_bottom.jsp" %>
