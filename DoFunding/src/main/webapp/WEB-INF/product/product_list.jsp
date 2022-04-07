<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="product_top.jsp" %>
<style type="text/css">
.area{
 	height:130px;	
}
h2 { margin: 20px 0} 
</style>
<%-- <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.rotator.js"></script> --%>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/*"></script>
<script type="text/javascript">
	$(function(){
		$('#rotator').rotator({ms:2000});	//이미지가 3초마다 알아서 바꿔줌..너무 편하고..
	}); //function
	
	function productInsert(){
		location.href = "productInsert.prd"; // ProductInsertController
	}
</script>
<head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/kfonts2.css" rel="stylesheet">
</head>
<div align="center">
	<c:if test="${loginInfo.admin == 0}"><a href="">관리자 페이지</a></c:if>
	<h2>상품 리스트 화면</h2>
	<form action="productList.prd" method="get">
		<select name="whatColumn">
			<option value="">선택
			<option value="name">상품명
			<option value="contents">설명
		</select>
		<input type="text" name="keyword">
		<input type="submit" value="검색">
	</form>	
<c:if test="${requestScope.list ne null}">
 <div class="container" > 
   <!--  <h2>캐러셀 슬라이드 효과  </h2> -->		
        <div id="carousel-example-generic" class="carousel slide" >
        
            <!-- Indicators(이미지 하단의 동그란것->class="carousel-indicators") -->
            <ol class="carousel-indicators">
              <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
              <li data-target="#carousel-example-generic" data-slide-to="1"></li>
              <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
             <!-- Carousel items  여기 foreach돌려서 최신상품 5개 정도 나오개 반복-->
             <div class="carousel-inner">
                <div class="item active">
                   <a href="productDetail.prd?p_num=${list.get(0).getP_num()}&pageNumber=${pageInfo.pageNumber}">
                   		<img src="<%=request.getContextPath()%>/resources/images/${list.get(0).getP_image()}" alt="<%=request.getContextPath() %>/resources/images/no_image.jpg" width="300" height="150">
                   </a>        
                </div>
                <div class="item">
                    <a href="productDetail.prd?p_num=${list.get(1).getP_num()}&pageNumber=${pageInfo.pageNumber}">
                   		<img src="<%=request.getContextPath()%>/resources/images/${list.get(1).getP_image()}" alt="<%=request.getContextPath() %>/resources/images/no_image.jpg" width="300" height="150">
                   </a>   
                </div>
                <div class="item">
                   <a href="productDetail.prd?p_num=${list.get(2).getP_num()}&pageNumber=${pageInfo.pageNumber}">
                   		<img src="<%=request.getContextPath()%>/resources/images/${list.get(2).getP_image()}" alt="<%=request.getContextPath() %>/resources/images/no_image.jpg" width="300" height="150">
                   </a>                   
                </div>
             </div>
            <!-- Controls -->
              <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                <span class="icon-prev"></span>
              </a>
              <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                <span class="icon-next"></span>
              </a>
          </div>
  </div>
  <br><br>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath() %>/resources/js/bootstrap.min.js"></script>
    <script>
      $('.carousel').carousel()  /* 1 */      
    </script>   
</c:if>

	<div class="container">
		<c:if test="${list.size() == 0}">
					<img  src="<%=request.getContextPath() %>/resources/images/no_image.jpg"><br>
					올리신 상품이 없습니다.			
		</c:if>
		<c:if test="${requestScope.list ne null}">
			<div>
				<table border="1" width="80%" >
					<tr>						
						<c:forEach var="p_product" items="${list}" varStatus="status">
							<td align="center">
								<a href="productDetail.prd?p_num=${p_product.p_num}&pageNumber=${pageInfo.pageNumber}"> 
								<img width="80%"
									alt="<%=request.getContextPath() %>/resources/images/no_image.jpg"
									src="<%=request.getContextPath() %>/resources/images/${p_product.p_image}"><br>
									${p_product.p_subject}<br> 
								</a>	
									${p_product.p_content}<br>
									진행중: ${p_product.p_total_price}/${p_product.p_end_price}원<br>
									${(p_product.p_total_price/p_product.p_end_price)*100} %<br>
									<input type="range" width="80%" name="userRange" min="1" max="${p_product.p_end_price}" step="${p_product.p_end_price/100}" value="${p_product.p_total_price}" disabled="disabled" />
									<c:if test="${fn:contains(p_product.p_like,sessionScope.loginInfo.id)}">
										<img 
										alt="<%=request.getContextPath() %>/resources/images/no_image.jpg"
										src="<%=request.getContextPath() %>/resources/images/hot.gif">
									</c:if>
									<c:if test="${!fn:contains(p_product.p_like,sessionScope.loginInfo.id)}">
										<img 
										alt="<%=request.getContextPath() %>/resources/images/no_image.jpg"
										src="<%=request.getContextPath() %>/resources/images/re.gif">
									</c:if>
								<br>
							</td>
							<c:if test="${status.count%3 == 0 }"></tr><tr></c:if>
						</c:forEach>
					</tr>
				</table>
			</div>
		</c:if>
	</div>
	<div>
		${pageInfo.pagingHtml}
	</div>
</div>	


<%@ include file="product_bottom.jsp" %>
