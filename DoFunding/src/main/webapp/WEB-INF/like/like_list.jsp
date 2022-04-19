<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../common/common.jsp" %>    
<%@ include file="../common/common_top.jsp" %>    


			<c:forEach items="${like.list}">
			<div class="likeBox">
				<table class="info">	
    		<tr>
					<th rowspan="3">
						<a onClick="location.href='product_detailView?p_num=${likeBean.lp_num}'">
						<div class="imgBox">
							<img src="<%=request.getContextPath() %>/resources/images/${productBean.p_image}" alt="<%=request.getContextPath() %>/resources/images/no_image.jpg" width="50px" height="50px"> 
						</div>
						</a>
					</th>
			</tr>		
			<tr>
					<td class="p_subject"><a onClick="location.href='product_detailView?p_num=${like.lp_num}'">${productBean.p_subject}</a> 
					</td>
					<td class="" id="deletelike" onclick="" >
					
					</td>
			</tr>
				</table>
			</div>
			</c:forEach>
			
			

<%@ include file="../common/common_bottom.jsp" %>  