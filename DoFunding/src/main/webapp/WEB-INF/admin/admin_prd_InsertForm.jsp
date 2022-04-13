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
<h2>제품 추가 화면(${loginInfo.id})</h2>
<div >
	<form:form commandName="productBean" action="admin_prd_insert.ad" method="post" enctype="multipart/form-data" >
			<table border="1" width="800">
				<tr>
					<th>작성자</th>
					<td>
						<c:if test="${loginInfo == null}">
							<input type="text" name="p_writer" value="admin" readonly="readonly">
						</c:if>
						<c:if test="${loginInfo != null}">
							<input type="text" name="p_writer" value="${loginInfo.id}" >
						</c:if>						 
					</td>
				</tr>
				<tr>
					<th>제품 분류</th>
					<td>
						<select name="p_category_fk">
								<c:forEach var="category" items="${categoryList}" >
									<option  value="${category.getCode()}" <c:if test="${category.code eq productBean.p_category_fk }"> selected</c:if>> ${category.getCname()}</option>
								</c:forEach>
						</select>
						<form:errors cssClass="err" path="p_category_fk" />
					</td>
				</tr>
				<tr>
					<th>펀딩 제목</th>
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
						<textarea name="p_content" rows="15" cols="50" style="resize: none;">${productBean.p_content}</textarea>
						<form:errors cssClass="err" path="p_content" />
					</td>
				</tr>
				<tr>
					<th>단가</th>
					<td>
						<c:if test="${productBean == null}">
							<input type="text" name="p_origin_price" value="0">
						</c:if>
						<c:if test="${productBean != null}">
							<input type="text" name="p_origin_price" value="${productBean.p_origin_price}">
						</c:if>											
						<form:errors cssClass="err" path="p_origin_price" />
					</td>
				</tr>
				<tr>
					<th>목표 금액</th>
					<td>
						<c:if test="${productBean == null}">
							<input type="text" name="p_end_price" value="0">
						</c:if>
						<c:if test="${productBean != null}">
							<input type="text" name="p_end_price" value="${productBean.p_end_price}">
						</c:if>						
						<form:errors cssClass="err" path="p_end_price" />
					</td>
				</tr>				
				<tr>
					<th>펀딩 시작일</th>
					<td>
						<input type="text" name="p_start_date" value="${productBean.p_start_date}" >
						<form:errors cssClass="err" path="p_start_date" />
						<br><span>ex) 2022-04-21 </span>
					</td>
				</tr>
				<tr>
					<th>펀딩 마감일</th>
					<td>
						<input type="text" name="p_end_date" value="${productBean.p_end_date}">
						<form:errors cssClass="err" path="p_end_date" />
						<br><span>ex) 2022-04-21 </span>
					</td>
				</tr>

			</table>

			<div style="width:800px; border: 1px solid; padding: 2px; margin: 10px;" >
				<div>
					<div style="border: 1px solid; padding: 10px;"><b>제품 옵션</b> <span style="float:right;"><button id="optionAdd_btn" class="btn btn-primary mb-3" type="button">옵션추가</button></span></div>
					<div>
						<div>
							<div id="optionIndex" >
								<div class='form-group' style='margin: 10px;' >
									<input type='text' placeholder='옵션' class='form-control input-lg'  style='float:left;' name='item_option' id='item_option'>
									<button type='button' onclick='option_del(this)' style='float:right;' id='optionDelBtn' name='optionDelBtn' class='btn-btn dark'>삭제</button>
									<form:errors cssClass="err" path="item_option" />
								<br></div>
							</div>
						</div>
						<div>
							<font color="red">최소 1개의 옵션이 필요합니다. ex) (의류) 100 , red ///(핸드폰관련) galaxy22 </font>
						</div>
					</div>
				</div>
			</div>
			<div>
				<input type="submit" value="상품추가하기">
			</div>
		</form:form>	
	</div>
</center>
<%@ include file="admin_bottom.jsp"%>