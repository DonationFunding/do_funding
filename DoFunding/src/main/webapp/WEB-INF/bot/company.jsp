<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>
<%@include file= "../common/common_top.jsp" %>
<style type="text/css">
  	body {
  		position: static; 
  		text-align: center;
  	}
  
    .image-box{
	    width:600px;
	    height:240px;
	    overflow:hidden;
	    margin:2% auto;
    }
    .text1{
	    margin: 0 auto;
	    font-size: 16px;
	    width: 50%;
    }
    .text2{
	    margin: 0 auto;
	    width: 50%;
    }
</style>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Do_funding- Do_funding 소개</title>
</head>
<body>
<h1>Do funding 소개</h1>
<div class ="text1">
Do_funding은 더 나은 사회를 위해 도움이 필요한 분들께 기부를 도와줄 수 있도록 지원하는 크라우드 펀딩 플랫폼입니다.
</div>
<br>
<img class= "image-box" src ="<%=request.getContextPath()%>/resources/images/company.jpg">
<br>
<div class="text2">
<br><br>
Do_funding은 더 나은 사회를 꿈꾸는 다양한 공익 프로젝트가 진행되는 온라인 기부 펀딩 사이트입니다. <br><br>
2022년 4월 서비스를 시작한 이후, 다양한 방식의 기부와 후원이 이루어지고 있습니다. <br><br>
공익단체는 Do_Funding을 통해 프로젝트를 홍보하고 모금을 진행할 수 있으며,<br> Do_Funding 가입자라면 누구나 Do_Funding의 공익 프로젝트를 응원할 수 있습니다.<br><br>
가입자가 펀딩을 하면 펀딩 금액을 Do_Funding이 기부합니다.<br> 사회 문제를 해결하고자 하는 공익단체, 소셜벤처, 개인의 프로젝트를 '펀딩'서비스를 통해 소개합니다.<br><br>
공익 캠페인에 관심있는 분들은 누구나 펀딩을 통해 사회공헌 프로젝트 기부에 참여할 수 있습니다.
 
</div>


 

</body>
</html>

<%@include file= "../common/common_bottom.jsp" %>