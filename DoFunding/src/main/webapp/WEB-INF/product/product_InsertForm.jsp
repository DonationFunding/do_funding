<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>
<style type="text/css">
.err {
	color: red;
	font-weight: bold;
}
</style>

productInsertForm.jsp
<br>
<h2>상품 추가 화면</h2>
<form:form commandName="productBean" action="insert.prd" method="post"
	enctype="multipart/form-data">
	<p>
		<label>제품 번호</label> 
		<input type="text" name="p_num" value="${productBean.p_num}"> 
		<form:errors cssClass="err" path="p_num" />
	</p>
	<p>
		<label>게시글 제목</label> 
		<input type="text" name="p_subject" value="${productBean.p_subject}"> 
		<form:errors cssClass="err" path="p_subject" />
	</p>
	<p>
		이미지 파일 <input type="file" name="upload" value="파일선택">
		<form:errors cssClass="err" path="p_image" />
	</p>
	<p>
		<label>게시글 내용</label> 
		<input type="text" name="p_content" value="${productBean.p_content}"> 
		<form:errors cssClass="err" path="p_content" />
	</p>
	<p>
		<label>단가</label> 
		<input type="text" name="p_origin_price" value="${productBean.p_origin_price}"> 
		<form:errors cssClass="err" path="p_origin_price" />
	</p>
	<p>
		<label>목표 금액</label> 
		<input type="text" name="p_end_price" value="${productBean.p_end_price}"> 
		<form:errors cssClass="err" path="p_end_price" />
	</p>
	<p>
		<label>펀딩 시작일</label> 
		<input type="text" name="p_start_date" value="${productBean.p_start_date}"> 
		<form:errors cssClass="err" path="p_start_date" />
	</p>
	<p>
		<label>펀딩 마감일</label> 
		<input type="text" name="p_end_date" value="${productBean.p_end_date}"> 
		<form:errors cssClass="err" path="p_end_date" />
	</p>
	
	<input type="submit" value="추가하기">
</form:form>
