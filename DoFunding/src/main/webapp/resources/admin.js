/**
 *  admin.js
 */

//다중 삭제
function selectDelete() {

	var chkArr = document.getElementsByName("rowcheck");

	flag = false;
	for (var i = 0; i < chkArr.length; i++) {
		if (chkArr[i].checked == true) {
			flag = true;
		}
	}
	if (flag == false) {
		alert("삭제할 체크박스를 하나라도 선택하세요.");
		return; //돌아가 밑에는 못 간다.return t/f 중요하지 않다.
	}
	var dep = confirm("정말 삭제하시겠습니까?");
	if(dep){
		document.myform.submit();//submit 누른것처럼 동작해라.
	}
}//selectDelete


//카테고리 추가
function inserCate() {
	location.href="admin_cate_insert.ad"; 
}
//카테고리 수정
function updateCate(cnum, pageNumber) {
	location.href = "admin_cate_update.ad?cnum=" + cnum + "&pageNumber="
			+ pageNumber;
}
//카테고리 삭제
function deleteCate(cnum,pageNumber){
	var dep = confirm("정말 삭제하시겠습니까?");
	//prompt : 값을 입력 받을 수 있는 창 (제목, 초기값) 확인/취소 버튼이 있음.
	//comfirm : YES/NO t/f
	//alert(dep);
	if(dep){
		location.href="admin_cate_delete.ad?cnum="+cnum+"&pageNumber="+ pageNumber;
	}
}//deleteCate


//펀딩 추가
function insertPrd() {
	location.href="admin_prd_insert.ad"; 
}
//펀딩 수정
function updatePrd(p_num,pageNumber){
	location.href = "admin_prd_update.ad?p_num=" + p_num + "&pageNumber="+ pageNumber;
}//updatePrd
//펀딩 삭제
function deletePrd(p_num,pageNumber){
	var dep = confirm("정말 삭제하시겠습니까?");
	//prompt : 값을 입력 받을 수 있는 창 (제목, 초기값) 확인/취소 버튼이 있음.
	//comfirm : YES/NO t/f
	//alert(dep);
	if(dep){
		location.href="admin_prd_delete.ad?p_num="+p_num+"&pageNumber="+ pageNumber;
	}
}//deletePrd


//게시글 추가
/*function insertPrd() {
	location.href="admin_prd_insert.ad"; 
}*/
//게시글 수정
/*function updatePrd(b_num,pageNumber){
	location.href = "admin_prd_update.ad?b_num=" + b_num + "&pageNumber="+ pageNumber;
}//updatePrd*/
//게시글 삭제
function deleteBd(b_num,pageNumber){
	var dep = confirm("정말 삭제하시겠습니까?");
	//prompt : 값을 입력 받을 수 있는 창 (제목, 초기값) 확인/취소 버튼이 있음.
	//comfirm : YES/NO t/f
	//alert(dep);
	if(dep){
		location.href="admin_bd_delete.ad?b_num="+b_num+"&pageNumber="+ pageNumber;
	}
}//deletePrd



//회원정보삭제
function deleteMem(gnum){
	//alert(gnum);	//회원번호
	//var contextPath= getContextPath();
	var dep = confirm("정말 삭제하시겠습니까?");
	//prompt : 값을 입력 받을 수 있는 창 (제목, 초기값) 확인/취소 버튼이 있음.
	//comfirm : YES/NO t/f
	//alert(dep);
	if(dep){
		location.href="mem_delete_proc.jsp?gnum="+gnum;
	}
}//deleteMem
//카테고리 삭제
function deleteCate(cnum,pageNumber){
	var dep = confirm("정말 삭제하시겠습니까?");
	//prompt : 값을 입력 받을 수 있는 창 (제목, 초기값) 확인/취소 버튼이 있음.
	//comfirm : YES/NO t/f
	//alert(dep);
	if(dep){
		location.href="admin_cate_delete.ad?cnum="+cnum+"&pageNumber="+ pageNumber;
	}
}//deleteCate
//카테고리 삭제
function deleteCate(cnum,pageNumber){
	var dep = confirm("정말 삭제하시겠습니까?");
	//prompt : 값을 입력 받을 수 있는 창 (제목, 초기값) 확인/취소 버튼이 있음.
	//comfirm : YES/NO t/f
	//alert(dep);
	if(dep){
		location.href="admin_cate_delete.ad?cnum="+cnum+"&pageNumber="+ pageNumber;
	}
}//deleteCate





function allRowCheck(allck){ 
	var chkArr = document.getElementsByName("rowcheck");
	var check = allck.checked;	
	if (check) {﻿
        for (var i=0; i<chkArr.length; i++){ //배열의 길이만큼
        	   chkArr[i].checked = true;
        }
    } 
	else {
        for (var i=0; i<chkArr.length; i++) {
          chkArr[i].checked = false;
         }
    }
}// allRowCheck

function prdcheck(){
	//alert(1);
	if($('input[name=gpsubject]').val()==""){
		alert('지원사업명이 누락됐습니다.');
		$('input[name=gpsubject]').focus();
		return false;
	}	
	if($('input[name=gpqty_full]').val()==""){
		alert('모집정원 입력란이 누락됐습니다.');
		$('input[name=gpqty_full]').focus();
		return false;
	}	
	if($('input[name=gpprice]').val()==""){
		alert('지원사업규모 입력란이 누락됐습니다.');
		$('input[name=gpprice]').focus();
		return false;
	}	
	if($('textarea[name=pcontents]').val()==""){
		alert('지원사업소개가 누락됐습니다.');
		$('textarea[name=pcontents]').focus();
		return false;
	}	
	if($('input[name=gpstartdate]').val()==""){
		alert('모집기간값이 누락됐습니다.');
		$('input[name=gpstartdate]').focus();
		return false;
	}	
	if($('input[name=gpenddate]').val()==""){
		alert('모집기간값이 누락됐습니다.');
		$('input[name=gpenddate]').focus();
		return false;
	}
	
	var sysday=new Date();	
	var endday=new Date($('input[name=gpenddate]').val());	
	if(sysday>=endday){
		alert('모집마감일이 현재보다 과거일 수 없습니다.');
		$('input[name=gpenddate]').focus();
		return false;
	}		
	if($('textarea[name=pcontents]').val().length<20){
		//alert($('textarea[name=pcontents]').val());
		alert('지원사업소개는 최소 20자 이상 입력해야 합니다.');
		$('textarea[name=pcontents]').focus();
		return false;
	}
	return true;
}

//모집마감일자 작성시 날짜체크
function enddate_check(){
	//alert($('input[name=gpenddate]').val());
	var sysday=new Date();	
	var endday=new Date($('input[name=gpenddate]').val());
	if(sysday>endday){
		alert('모집마감일이 현재보다 과거일 수 없습니다.');
		$('input[name=gpenddate]').focus();
		return false;
	}	

}

//지원내역승인체크
function orderProgressCheck(plus,ing,full){
		//지원자/현재지원자/ 총지원가능자
		if($('select[name="goresult"]').val()=="대기중"){//대기중
				alert("대기를 재입력하실 수는 없습니다.");
				return false;
		}	
		if($('select[name="goresult"]').val()=="승인"){//승인에
			if(Number(full) < Number(plus)+Number(ing)){//인원을 초과하는 값이라면
				alert("신청가능 인원을 초과하게 됩니다.");
				return false;
			}
		}
		
		var updateck=confirm("한번 입력한 값은 변경이 불가능 합니다. 입력하시겠습니까?");
		if(updateck){
			document.f.submit();
		}
		else{
			return false;
		}
}		

//내가만든 눈처럼 내리는 기능
function abc(){
	var contextPath= getContextPath();
	//alert(contextPath);
	var a=$("<img src='"+contextPath+"/images/태극기1.png' class='rain_img' style='transform : rotate("+(Math.floor(Math.random()*731)-365)+"deg); left:"+
			(Math.floor(Math.random()*screen.width-30)+30)+
			"px; bottom:"+screen.height+"px; width:100px; height:80px; position: absolute; z-index:-1; '>");
	$('body').append(a.fadeIn(2000));
	
		var b=Math.floor(Math.random()*2);
		str="";		
		if(b==0){
			str= '-=295deg';												
		}
		else{
			str= '+=285deg';												
		}
	$('.rain_img:last').animate({
							
				bottom:'-='+screen.height+'px',
				//transform :'rotate(+='+Number(360)+'deg)'
				rotate: str
	},8000);
	
	$('.rain_img').each(function(){
		if($(this).css('bottom')==screen.height+'px'){
			$(this).fadeOut(3000,function(){
			$(this).remove();	
		});	
		}
	});
};//abc


//연결통로	
function getContextPath(){
	var hostIndex=location.href.indexOf(location.host) + location.host.length;
	
	var contextPath = location.href.substring(hostIndex, location.href.indexOf('/', hostIndex +1));
	return contextPath;
}
	


