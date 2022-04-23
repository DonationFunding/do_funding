<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>
<%@include file= "../common/common_top.jsp" %>
    <style type="text/css">
  	body {position: static; 
  		  text-align: center;}
  
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
<title>Do funding- Do funding 소개</title>
</head>
<body>
<h1>Do funding 소개</h1>
<div class ="text1">
Do funding은 더 나은 사회를 위해 도움이 필요한 분들께 기부를 도와줄 수 있도록 지원하는 크라우드 펀딩 플랫폼입니다.
</div>
<br>
<img class= "image-box" src ="<%=request.getContextPath()%>/resources/images/company.jpg">
<br>
<div class="text2">
Do funding
Do funding은 위안부 삶을 살아오시며 피해를 입으신 할머님분들께 도움을 드리고자 진행되는 온라인 기부 펀딩 사이트 입니다. 
2022년 4월 서비스를 시작한 이후, 다양한 방식의 기부와 후원이 이루어지고 있습니다. 
공익단체는 Do Funding을 통해 프로젝트를 홍보하고 모금을 진행할 수 있으며, Do Funding 가입자라면 누구나 Do Funding과 함께 위안부 할머님들을 후원할 수 있습니다.
가입자가 펀딩을 하면 펀딩 금액의 일부를 Do Funding이 위안부 관련 기관에 기부합니다.
위안부 문제를 해결하고자 하는 공익단체, 소셜벤처, 개인의 프로젝트를 '펀딩'서비스를 통해 소개합니다.
공익 캠페인에 관심있는 분들은 누구나 펀딩을 통해 사회공헌 프로젝트 기부에 참여할 수 있습니다.
 
</div>


 

</body>
</html>

<%@include file= "../common/common_bottom.jsp" %>