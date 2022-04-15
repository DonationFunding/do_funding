<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="admin_top.jsp"%>
<script type="text/javascript">
	function insert() {
		location.href="admin_prd_insert.ad"; 
	}
	
	function update(p_num,pageNumber){

		location.href="admin_prd_update.ad?p_num="+p_num+"&pageNumber="+pageNumber; 	
	}	
</script>

<center>
	<h2>펀딩 목록(${pageInfo.pageNumber})</h2>
	<form action="admin_prd_list.ad" method="get">
		<select name="whatColumn">
			<option value="all">선택</option>
			<option value="p_subject">상품명</option>
			<option value="p_content">설명</option>
		</select> 
		<input type="text" name="keyword"> 
		<input type="submit" value="검색">
	</form>
	<table border="1" width="1000">
		<tr>
			<td align="left" colspan="8">
				<input type="button" value="삭제" onclick="selectDelete()">
				<input type="button" value="추가하기" onclick="insertPrd()">
			</td>
			<td colspan="3" align="center">
				<c:set var="now" value="<%=new java.util.Date()%>" />
				<c:set var="sysDate"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set>
				Today : ${sysDate} 								
			</td>
			<td align="right" colspan="8">
				<input type="button" value="추가하기" onclick="insert()">
			</td>
		</tr>
		<tr>
			<th  align="center">
				<input type="checkbox" name="allcheck" onclick="allRowCheck(this)">
			</th>
			<th>펀딩번호</th>
			<th>펀딩명</th>
			<th>image</th>
			<th>가격</th>
			<th>펀딩금액</th>
			<th>확정금액</th>
			<th>진행률</th>
			<th>마감일</th> 
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<form name="myform" action="admin_prd_multidelete.ad? method="post">
		<input type="hidden" name="pageNumber" value="${pageInfo.pageNumber }">
		<c:forEach var="prdBean" items="${prdList}">
			<tr>
				<td align="center" >
					<input type="checkbox" name="rowcheck" value="${prdBean.p_num }">
				</td>
				<td><c:out value="${prdBean.p_num}" /></td>
				<td>
					${prdBean.p_subject}
				</td>
				<td>
					<img width="100" height="100" alt="<%=request.getContextPath() %>/resources/images/no_image.jpg"
					src="<%=request.getContextPath() %>/resources/images/${prdBean.p_image}"><br>
				</td>
				<td>${prdBean.p_origin_price}원</td>
				<td>${prdBean.p_total_price}원</td>
				<td>${prdBean.p_end_price}원</td>
				<td>${(prdBean.p_total_price/prdBean.p_end_price)*100} %</td>	
 				<td>
 					<fmt:parseDate value="${prdBean.p_end_date}" var="dateValue" pattern="yyyy-MM-dd" />
 					<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd" />
 				</td>
				<td>
					<input type="button" value="수정" onclick="updatePrd('${prdBean.p_num}','${pageInfo.pageNumber}')">				
				</td>
				<td>
					<input type="button" value="삭제" onclick="deletePrd('${prdBean.p_num}','${pageInfo.pageNumber}')">				
				</td>
			</tr>
		</c:forEach>
	</table>
		<br>
		<br>
	<div class="container">
			<ul class="pagination pagination-sm">
				${pageInfo.pagingHtml}
			</ul>
	</div>
</center>
<%@ include file="admin_bottom.jsp"%>