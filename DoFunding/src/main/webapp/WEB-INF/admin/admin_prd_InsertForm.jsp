<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./admin_top.jsp"%>
<style type="text/css">
.err {
	color: red;
	font-weight: bold;
}
</style>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/option.js"></script>
<center>
<h2>상품 추가 화면</h2>
<div >
	<table border="1" width="800">
	<form:form commandName="productBean" action="admin_prd_insert.ad" method="post" enctype="multipart/form-data" >
			<tr>
				<th>제품 분류</th>
				<td>
					<select name="p_category_fk">
						<c:forEach var="category" items="${categoryList}">
							<option value="${category.code}">${category.cname}</option>
						</c:forEach>
					</select>	
					<input type="text" name="p_num" value="${productBean.p_num}"> 
					<form:errors cssClass="err" path="p_num" />
				</td>	
			</tr>
			<tr>
				<th>게시글 제목</th>
				<td>
					<input type="text" name="p_subject" value="${productBean.p_subject}"> 
					<form:errors cssClass="err" path="p_subject" />
				</td>
			</tr>
			<tr>
				<th>이미지 파일</th>
				<td> 
					<input type="file" name="upload" value="파일선택">
					<form:errors cssClass="err" path="p_image" />
				</td>
			</tr>
			<tr>
				<th>게시글 내용</th>
				<td> 
					<input type="text" name="p_content" value="${productBean.p_content}"> 
					<form:errors cssClass="err" path="p_content" />
				</td>
			</tr>
			<tr>
				<th>단가</th>
				<td> 
					<input type="text" name="p_origin_price" value="${productBean.p_origin_price}"> 
					<form:errors cssClass="err" path="p_origin_price" />
				</td>
			</tr>
			<tr>
				<th>목표 금액</th>
				<td> 
					<input type="text" name="p_end_price" value="${productBean.p_end_price}"> 
					<form:errors cssClass="err" path="p_end_price" />
				</td>
			</tr>
			<tr>
				<th>펀딩 시작일</th>
				<td>
					<input type="text" name="p_start_date" value="${productBean.p_start_date}"> 
					<form:errors cssClass="err" path="p_start_date" />
				</td>	
			</tr>
			<tr>
				<th>펀딩 마감일</th>
				<td>
				<input type="text" name="p_end_date" value="${productBean.p_end_date}"> 
				<form:errors cssClass="err" path="p_end_date" />
				</td>				
			</tr>
			<tr>
				<th>옵션</th>
				<td>
					<table  width="100%">
						<tr>
							<td>
								<button id="optionAdd_btn" class="btn btn-primary mb-3" type="button">옵션추가</button>
							</td>
						</tr>
						<tr id="optionIndex">
							
						</tr>
						<tr>	
							<td>
								<span><font color="red">최소 1개의 옵션이 필요합니다. ex) 100 , red /// 95 , blue</font></span> 		
							</td>
						</tr>	
					</table>			
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="추가하기" >
				</td>	
			</tr>	
	</form:form>
	</table>
</div>
</center>
<%@ include file="admin_bottom.jsp"%>