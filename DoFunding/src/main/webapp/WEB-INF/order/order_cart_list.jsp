<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../common/common_top.jsp"%>
mall_cartAdd.jsp=>mall_cartList.jsp<br> <!-- 장바구니 목록보기 -->

<jsp:useBean id="mallCart" class="order.cart.ShoppingInfo" scope="session"/>
<%-- <%
Vector<ProductBean> cv = mallCart.getAllProducts();
DecimalFormat df = new DecimalFormat("#,###");
int cartTotalPrice=0, cartTotalPoint=0;
 %>
 
 <table border="1" width="100%" align="center">
 	<tr class="m2">
 		<td colspan="6" align="center">
 			<h4>장바구니 보기</h4>
 		</td>
 	</tr>
 	
 	<tr class="m1">
 		<th>번호</th>
 		<th>상품명</th>
 		<th>수량</th>
 		<th>단가</th>
 		<th>금액</th>
 		<th>삭제</th>
 	</tr>
 	<%
 		if(cv.size() == 0){
	%>
			<tr>
				<td colspan="6" align="center">
					선택한 상품이 없습니다.
				</td>
			</tr>
	<% 			
 		}
 		else{
 			for( ProductBean pb : cv){
 				int pnum=pb.getPnum();
 				String pname=pb.getPname();
 				int price=pb.getPrice();
 				int point=pb.getPoint();
 				int pqty = pb.getPqty(); // 주문수량
 				String pimage=pb.getPimage();
 				String imgPath=request.getContextPath()+"/myshop/images/"+pimage;
		%>
				<tr>
					<td align="center"><%=pnum %></td>
					<td align="center">
						<img src="<%=imgPath%>" width=120 height=120></a><br>
						<%=pname %>
					</td>
					<td align="center">
						<form name="f" method="post" action="mall_cartEdit.jsp">
							<input type="text" name="oqty" size="1" value="<%=pqty%>">개
							<input type="hidden" name="pnum" value="<%=pnum %>" >
							<input type="submit" value="수정">
						</form>
					
					</td>
					<td align="center">
						<%=price %>원<br>
						[<%=point %>]point
					</td>
					<td align="center">
					<%=df.format(pb.getTotolPrice()) %>원<br>
					[<%=df.format(pb.getTotolPoint()) %>]point<br>
					</td>
					<td align="center">
						<a href="mall_cartDel.ord?pnum=<%=pnum %>">삭제</a>
					</td>
				</tr>
		<%
				cartTotalPrice += pb.getTotolPrice();
				cartTotalPoint += pb.getTotolPoint();
 			} // for
		%>
			<tr class="m1">
				<td colspan="4">
					<b>장바구니 총액</b> :
					<font color="red"><%=df.format(cartTotalPrice) %></font>원<br>
					<font color="green">총적립포인트 : [<%=df.format(cartTotalPoint) %>]</font>point<br>
					
				</td>
				<td colspan="2">
					<a href="mall_order.jsp?pnum=0&oqty=0">[주문하기]</a> 
					<a href="mall.jsp">[계속 쇼핑]</a> 
				</td>
			</tr>
		<%	 			
 		}//else
 	%>
 </table> --%>
 <%@ include file = "../common/common_bottom.jsp"%>
 