<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String imgNum;
	if (request.getParameter("imgNum") != null) 
		imgNum = (String)request.getParameter("imgNum");
	else 
		imgNum = "01";
	
%>
<style>
	#lineWidth {
		border-bottom: 1px solid #121212;
    	box-shadow: 0 1px #2A2A2A;
    	margin: 20px 15px;
    	width: 270px;
    }
    #lineHeight {
    	background: #121212;
	    box-shadow: 1px 0 #2a2a2a;
	    display: inline-block;
	    width: 1px;
    }
	#smallImg {
		background: #222;
		margin-top: 10px;
		width: 900px;
		height: 400px;
		padding: 30px;
	}
	#left {
		margin-top: 20px;
		width: 300px;
	}
	#right {
		width: 600px;
		padding-top: 0;
	}
	div.imgLine {
		margin-left: 0px;
	}	
	#bigImg {
		float: left;
		width:350px;
		height:250px;
		-webkit-transition: 1.5s ease-in-out;
		-moz-transition: 1.5s ease-in-out;
    	-o-transition: 1.5s ease-in-out;
    	transition: 1.5s ease-in-out;
	}
	#left, #right {
		border: 0px solid yellow;
		float: left;
	}
	#right img {
		height: 350px;
		width: 500px;
		box-shadow: 0 5px 35px rgba(0,0,0,.80);
	}
	img {
		width: 50px;
		height: 50px;
	}
	#leftDown {
		color: #888;
		width: 280px;
		height: 140px;
		margin-left: 10px;
		
	}
	h1 {
		margin: 30px 0;
		font-size: 27px;
		text-decoration: underline;
	}
	#bigImg:hover {
    -webkit-transform: scale(1.3);
    -moz-transform: scale(1.3);
    -o-transform: scale(1.3);
    -ms-transform: scale(1.3);
    transform: scale(1.3);
 }
</style>


<div id="content">
<h1>Gallery</h1>
<div id="smallImg">
	<div id="left">
		<div class="imgLine"><img src="resources/images/gallery/img01.JPG"/>
			<img src="resources/images/gallery/img02.JPG"/>
			<img src="resources/images/gallery/img03.JPG"/>
			<img src="resources/images/gallery/img04.JPG"/></div>
		<div class="imgLine"><img src="resources/images/gallery/img05.JPG"/>
			<img src="resources/images/gallery/img06.JPG"/>
			<img src="resources/images/gallery/img07.JPG"/>
			<img src="resources/images/gallery/img08.JPG"/></div>
		<div class="imgLine"><img src="resources/images/gallery/img09.JPG"/>
			<img src="resources/images/gallery/img10.JPG"/>
			<img src="resources/images/gallery/img11.JPG"/>
			<img src="resources/images/gallery/img12.JPG"/></div>
		<div id="lineWidth"></div>
		<div id="leftDown">
		<% 
		switch (Integer.parseInt(imgNum)){
			case 1 : %>2011년 'MBN 플랫폼 서비스'<br/>교육센터 협약식.<%; break;
			case 2 : %>2012년 한국 체육대학교<br/>희망취업 박람회.<%; break;
			case 3 : %>외국인주민 복지지원센터 개관식.<%; break;
			case 4 : %>국가기간·전략산업직종훈련<br/>협약 체결식.<%; break;
			case 5 : %>스포츠 마케팅 현장실습.<%; break;
			case 6 : %>2014년 외국인 무료교육.<%; break;
			case 7 : %>여성 취업 박람회.<%; break;
			case 8 : %>2015년 YTC직업전문학교 입학식.<%; break;
			case 9 : %>물류유통관리 과정 수료식.<%; break;
			case 10 : %>한국 도시농업 조경진흥원<br/>자격검정장 협약식.<%; break;
			case 11 : %>스포츠마케팅 제8기 수료식.<%; break;
			case 12 : %>ERP생산정보시스템 수료식.<%; break;
			} 
		%></div>
	</div>
		
		<div id="right">
		<div id="lineHeight" style="height:350px; margin-right:50px; margin-top:20px"></div>
		<span id="bigImg"><img src="resources/images/gallery/img<%=imgNum %>.JPG" /></span></div>
	</div>
</div>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
	$(document).ready(function(){
		$(".imgLine img").attr({width:75, height:75})
		$(".imgLine img").click(function(){
			var imgSrc = $(this).attr("src");	
			var img = "<img src='"+imgSrc+"'width='500px' height='350px'/>";
			$("#bigImg").html(img);
			if(imgSrc=="resources/images/gallery/img01.JPG"){
 				$("#leftDown").html("2011년 'MBN 플랫폼 서비스'<br/>교육센터 협약식.");
 			} else if(imgSrc=="resources/images/gallery/img02.JPG"){
 				$("#leftDown").html("2012년 한국 체육대학교<br/>희망취업 박람회.");
 			} else if(imgSrc=="resources/images/gallery/img03.JPG"){
 				$("#leftDown").html("외국인주민 복지지원센터 개관식.");
 			} else if(imgSrc=="resources/images/gallery/img04.JPG"){
 				$("#leftDown").html("국가기간·전략산업직종훈련<br/>협약 체결식.");
 			} else if(imgSrc=="resources/images/gallery/img05.JPG"){
 				$("#leftDown").html("스포츠 마케팅 현장실습.");
 			} else if(imgSrc=="resources/images/gallery/img06.JPG"){
 				$("#leftDown").html("2014년 외국인 무료교육.");
 			} else if(imgSrc=="resources/images/gallery/img07.JPG"){
 				$("#leftDown").html("여성 취업 박람회.");
 			} else if(imgSrc=="resources/images/gallery/img08.JPG"){
 				$("#leftDown").html("2015년 YTC직업전문학교 입학식.");
 			} else if(imgSrc=="resources/images/gallery/img09.JPG"){
 				$("#leftDown").html("물류유통관리 과정 수료식.<br/>무운을 빕니다.");
 			} else if(imgSrc=="resources/images/gallery/img10.JPG"){
 				$("#leftDown").html("한국 도시농업 조경진흥원<br/>자격검정장 협약식.");
 			} else if(imgSrc=="resources/images/gallery/img11.JPG"){
 				$("#leftDown").html("스포츠마케팅 제8기 수료식.");
 			} else if(imgSrc=="resources/images/gallery/img12.JPG"){
 				$("#leftDown").html("ERP생산정보시스템 수료식.");
 			} 
		});
	});	
</script>	