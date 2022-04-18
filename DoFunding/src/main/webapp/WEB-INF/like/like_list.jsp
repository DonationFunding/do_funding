<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../common/common.jsp" %>    
<%@ include file="../common/common_top.jsp" %>    


 
				<c:if test="${(fn:length(d_num)) == 0">
				<div align="center"><strong>찜하신 펀딩이 없습니다.</strong></div>
				</c:if>


			<c:forEach items="${d_num}" var="d_num">
			<div class="likeBox">
				<table class="info">	
    		<tr>
					<th rowspan="3">
						<a  onClick="location.href='product_detailView?p_num=${likeBean.p_num}'">
						<div class="imgBox">
							<img src="<%=request.getContextPath() %>/resources/images/${productBean.p_image}" alt="<%=request.getContextPath() %>/resources/images/no_image.jpg" width="50px" height="50px"> 
						</div>
						</a>
					</th>
			</tr>
			<tr>
					<td class="p_subject"><a onClick="location.href='product_detailView?p_num=${like.p_num}'">${productBean.p_subject}</a> 
					</td>
					<td class="" id="deletelike" onclick="" >
					
					</td>
			</tr>
				</table>
			</div>
			</c:forEach>
			
			

<%@ include file="../common/common_bottom.jsp" %>  