<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>
<style type="text/css">
.err {
	color: red;
	font-weight: bold;
}
</style>

product\productInsertForm.jsp
<br>

<!-- insert.prd(post) => product.controller.ProductInsertController -->
<%-- <%application.getAttribute(name); %> --%>

<h2>상품 추가 화면</h2>
<form:form commandName="productBean" action="insert.prd" method="post"
	enctype="multipart/form-data">
	<p>
		<label>*상품명</label> 
		<input type="text" name="name" value="${productBean.name }"> 
		<form:errors cssClass="err" path="name" />
	</p>
	<p>
		*제조 회사 <input type="text" name="company" value="${productBean.company }"> 
		<form:errors cssClass="err" path="company" />
	</p>
	<p>
		*가격 <input type="text" name="price" value="${productBean.price }"> 
		<form:errors cssClass="err" path="price" />
	</p>
	<p>
		재고 수량 <input type="text" name="stock" value="${productBean.stock }"> 
	</p>
	<p>
		적립 포인트 <input type="text" name="point" value="${productBean.point }"> 
	</p>
	<p>
		설명 <input type="text" name="contents" value="${productBean.contents }"> 
	</p>
	<p>
		*그림 파일 <input type="file" name="upload" value="파일선택"> <!-- upload="사이다.jpg" -->
		<form:errors cssClass="err" path="image" />
	</p>
	<p>
		입고 일자 <input type="text" name="inputdate" value="${productBean.inputdate }"> <br>
		<br>
	</p>
	<input type="submit" value="추가하기">
</form:form>
