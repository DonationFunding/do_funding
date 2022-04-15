<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>
<%@ include file="../common/common_top.jsp"%>
<link
	href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath() %>/resources/css/kfonts2.css"
	rel="stylesheet">
<style type="text/css">
a:hover {
	color: #ff3;
}
</style>
<<<<<<< HEAD
productDetailView.jsp
<br>
=======
<script type="text/javascript">
	function insert(){
		location.href = "insert.prd"; // ProductInsertController
	}
</script>
productDetailView.jsp<br>

>>>>>>> refs/remotes/origin/do-hjh
<center>
<<<<<<< HEAD
	<h3>펀딩 상세 화면(${productBean.p_num }/${pageNumber })</h3>
	<table border="1" width="600" style="margin: 15px; padding: 15px;">
		<tr>
			<td rowspan="7"><img width=150 height=150
				src="<%=request.getContextPath() %>/resources/images/${productBean.p_image}"
				alt="<%=request.getContextPath() %>/resources/images/no_image.jpg">
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
			<fmt:parseDate value="${productBean.p_start_date}" var="dateValue"
				pattern="yyyy-MM-dd" />
			<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd" />
		</c:set>
		<c:set var="p_end_date">
			<fmt:parseDate value="${productBean.p_end_date}" var="dateValue"
				pattern="yyyy-MM-dd" />
			<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd" />
		</c:set>
		<%-- <c:set var="p_end_date"><fmt:formatDate value="${productBean.p_end_date}" pattern="yyyy-MM-dd" /></c:set> 	
 --%>
		<tr>
			<th>펀딩 기간</th>
			<td>${p_start_date}~${p_end_date}</td>
		</tr>
		<tr>
			<th>진행상황</th>
			<td>${(productBean.p_total_price/productBean.p_end_price)*100}%</td>
		</tr>
		<!-- add.mall => mall.controller.CartAddController -->
		<form method="post" action="add.ord">
			<tr>
				<th>옵션</th>
				<td><select name="option1">
						<c:forEach var="optionBean" items="${optionList}">
							<option value="${optionBean.option_no}">${optionBean.option_content}</option>
						</c:forEach>
				</select></td>
			</tr>

			<tr>
				<th>주문수량</th>
				<td colspan="2"><input type="hidden" name="p_num"
					value="${productBean.p_num }"> <input type="text"
					name="orderqty"> <!-- 현재날짜 --> <c:set var="now"
						value="<%=new java.util.Date()%>" /> <c:set var="sysDate">
						<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" />
					</c:set> <input type="submit" value="주문"
					<c:if test="${sysDate>productBean.p_end_date}">disabled</c:if>>
				</td>
			</tr>
		</form>
		<tr>
			<td colspan="3"><a href="list.prd?pageNumber=${pageNumber }">상품
					리스트</a>
				<form name="dipform" action="list.prd" method="get">
					<c:if test="${loginInfo.no != null}">
						<c:if test="${dip.no == null}">
							<input type="image"
								src="<%=request.getContextPath()%>/resources/images/hot.gif"
								onclick="">
						</c:if>
						<c:if test="${loginInfo.no == null}">
							<input type="image"
								src="<%=request.getContextPath()%>/resources/images/hot.gif"
								onclick="">
						</c:if>
					</c:if>
				</form></td>
		</tr>
	</table>
</center>
<%@ include file="../common/common_bottom.jsp"%>
=======
    <h3>펀딩 상세 화면(${productBean.p_num }/${pageNumber })</h3>
    <table border="1" width="600" style="margin: 15px; padding: 15px;">
    	<tr>
    		<td rowspan="7">
    			<img width=150 height=150 src="<%=request.getContextPath() %>/resources/images/${productBean.p_image}" alt="<%=request.getContextPath() %>/resources/images/no_image.jpg" >
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
    		<td colspan="2">
    				<input type="hidden" name="p_num" value="${productBean.p_num }">
	    			<input type="text" name="o_qty">
<!-- 현재날짜 -->
<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="sysDate"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set> 
	    			<input type="submit" value="주문" <c:if test="${sysDate>productBean.p_end_date}">disabled</c:if>>
	    			<input type="submit" value="주문1" <c:if test="${sysDate>productBean.p_end_date}"></c:if>>
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
>>>>>>> refs/remotes/origin/do-hjh
