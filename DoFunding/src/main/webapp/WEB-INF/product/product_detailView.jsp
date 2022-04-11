<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common_top.jsp" %>      
productDetailView.jsp<br>
<center>
    <h3>펀딩 상세 화면(${productBean.p_num }/${pageNumber })</h3>
    <table border="1" width="600">
    	<tr>
    		<td rowspan="7">
    			<img width=150 height=150 src="<%=request.getContextPath() %>/resources/images/${productBean.p_image}" alt="<%=request.getContextPath() %>/resources/images/no_image.jpg" >
    			<%-- <img src="<%=application.getContextPath()%>/resources/${productBean.image}" width=50 height=50> --%>
    		</td>
    	</tr>
    	<tr>
    		<td>상품명</td>
    		<td>${productBean.p_subject }</td>
    	</tr>
    	<tr>
    		<td>가격</td>
    		<td>${productBean.p_origin_price }원</td>
    	</tr>
    	<tr>
    		<td>설명</td>
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
    		<td>펀딩 기간</td>
    		<td>${p_start_date}~${p_end_date}</td>
    	</tr>
    	<tr>
    		<td>진행상황</td>
    		<td>${(productBean.p_total_price/productBean.p_end_price)*100} %</td>
    	</tr>
<!-- add.mall => mall.controller.CartAddController -->
	<form method="post" action="add.ord">
    	<tr>
    		<td>옵션</td>
    		<td>
    			<select name="option1">
    				<c:forEach var="optionBean" items="${optionList}">
    					<option value="${optionBean.option_no}">${optionBean.option_content}</option>
    				</c:forEach>
    			</select>
    		</td>
    	</tr>
 
    	<tr>
    		<td>주문수량</td>
    		<td colspan="2">
    				<input type="hidden" name="p_num" value="${productBean.p_num }">
	    			<input type="text" name="orderqty">
<!-- 현재날짜 -->
<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="sysDate"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set> 
	    			<input type="submit" value="주문" <c:if test="${sysDate>productBean.p_end_date}">disabled</c:if>>
    		</td>   		
    	</tr>
    </form> 	
    	<tr>
    		<td colspan="3">
    			<a href="list.prd?pageNumber=${pageNumber }">상품 리스트</a>
    		</td>
    	</tr>
    </table>
    </center>
<%@ include file="../common/common_bottom.jsp" %>