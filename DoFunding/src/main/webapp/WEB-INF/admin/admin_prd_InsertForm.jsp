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
<div border="1" width="800">
	<form:form commandName="productBean" action="admin_prd_insert.ad" method="post" enctype="multipart/form-data" >
			<p>
				<span>제품 분류</span>
					<select name="p_category_fk">
						<c:forEach var="category" items="${categoryList}">
							<option value="${category.code}">${category.cname}</option>
						</c:forEach>
					</select>
					
					<input type="text" name="p_num" value="${productBean.p_num}"> 
					<form:errors cssClass="err" path="p_num" />
			</p>
			<p>
				<span>게시글 제목</span>
					<input type="text" name="p_subject" value="${productBean.p_subject}"> 
					<form:errors cssClass="err" path="p_subject" />
			</p>
			<p>
				<span>이미지 파일</span> 
					<input type="file" name="upload" value="파일선택">
					<form:errors cssClass="err" path="p_image" />
			</p>
			<p>
				<span>게시글 내용</span> 
					<input type="text" name="p_content" value="${productBean.p_content}"> 
					<form:errors cssClass="err" path="p_content" />
			</p>
			<p>
				<span>단가</span> 
				<input type="text" name="p_origin_price" value="${productBean.p_origin_price}"> 
				<form:errors cssClass="err" path="p_origin_price" />
			</p>
			<p>
				<span>목표 금액</span> 
				<input type="text" name="p_end_price" value="${productBean.p_end_price}"> 
				<form:errors cssClass="err" path="p_end_price" />
			</p>
			<p>
				<span>펀딩 시작일</span>
					<input type="text" name="p_start_date" value="${productBean.p_start_date}"> 
					<form:errors cssClass="err" path="p_start_date" />
			</p>
			<p>
				<span>펀딩 마감일</span>
				<input type="text" name="p_end_date" value="${productBean.p_end_date}"> 
				<form:errors cssClass="err" path="p_end_date" />				
			</p>
			<p>
				<span>옵션</span>
				<div class="tab-pane" id="itemInsert_2">
					<button id="optionAdd_btn" class="btn btn-primary mb-3"
						type="button">옵션추가</button>

					<div id="optionIndex"></div>
					<br />
					<div class="form-group mt-3">
						<input class="form-control input-lg " type="text" placeholder="최소 1개의 옵션이 필요합니다. ex) 100 , red /// 95 , blue " readonly />
					</div>
				</div>
				<div class="tab-pane" id="itemInsert_2">
					<button id="optionAdd_btn" class="btn btn-primary mb-3"
						type="button">옵션추가</button>

					<div id="optionIndex"></div>
					<br />
					<div class="form-group mt-3">
						<input class="form-control input-lg " type="text"
							placeholder="최소 1개의 옵션이 필요합니다. ex) 100 , red /// 95 , blue "
							readonly />
					</div>
				</div>				
			</p>
			<p>
					<input type="submit" value="추가하기" >
			</p>	
	</form:form>
</div>
</center>
<%@ include file="admin_bottom.jsp"%>