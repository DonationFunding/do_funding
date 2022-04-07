<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="product_top.jsp" %>
productDetailView.jsp<br>
<center>
    <h3>펀딩 상세 화면(${p_product.p_num }/${pageNumber })</h3>
    <table border="1" width="600">
    	<tr>
    		<td rowspan="7">
    			<img width=150 height=150 src="<%=request.getContextPath() %>/resources/images/${p_product.p_image}" alt="<%=request.getContextPath() %>/resources/images/no_image.jpg" >
    			<%-- <img src="<%=application.getContextPath()%>/resources/${p_product.image}" width=50 height=50> --%>
    		</td>
    	</tr>
    	<tr>
    		<td>상품명</td>
    		<td>${p_product.p_subject }</td>
    	</tr>
    	<tr>
    		<td>가격</td>
    		<td>${p_product.p_origin_price }원</td>
    	</tr>
    	<tr>
    		<td>설명</td>
    		<td>${p_product.p_content }</td>
    	</tr>
<!-- add.mall => mall.controller.CartAddController -->
	<form method="post" action="add.mall">
    	<tr>
    		<td>옵션1</td>
    		<td>
    			<select name="option1">
    				<option value=""></option>
    			</select>
    		</td>
    	</tr>
    	<tr>
    		<td>옵션2</td>
    		<td>
    			<select name="option1">
    				<option value=""></option>
    			</select>
    		</td>
    	</tr>
    	<tr>
    		<td>주문수량</td>
    		<td>
    				<input type="hidden" name="p_num" value="${p_product.p_num }">
	    			<label>주문수량</label>
	    			<input type="text" name="orderqty">
<!-- 현재날짜 -->
<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="sysDate"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set> 
	    			<input type="submit" value="주문" <c:if test="${sysDate>p_product.p_end_date}">disabled</c:if>>
    		</td>   		
    	</tr>
    </form> 	
    	<tr>
    		<td colspan="2">
    			<a href="productList.prd?pageNumber=${pageNumber }">상품 리스트</a>
    		</td>
    	</tr>
    </table>
    </center>
<%@ include file="product_bottom.jsp" %>