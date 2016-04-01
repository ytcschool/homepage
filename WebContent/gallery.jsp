<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String imgNum;
	if (request.getParameter("imgNum") != null) 
		imgNum = (String)request.getParameter("imgNum");
	else 
		imgNum = "01";
	
%>
<style type="text/css">
  @-webkit-keyframes spincube {
    	from,to  { -webkit-transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg); }
	    16%      { -webkit-transform: rotateY(-90deg);                           }
	    33%      { -webkit-transform: rotateY(-90deg) rotateZ(90deg);            }
	    50%      { -webkit-transform: rotateY(-180deg) rotateZ(90deg);           }
	    66%      { -webkit-transform: rotateY(-270deg) rotateX(90deg);           }
	    83%      { -webkit-transform: rotateX(90deg);                            }
	  }

  @keyframes spincube {
	    from,to {
	      -moz-transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg);
	      -ms-transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg);
	      transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg);
	    }
	    16% {
	      -moz-transform: rotateY(-90deg);
	      -ms-transform: rotateY(-90deg);
	      transform: rotateY(-90deg);
	    }
	    33% {
	      -moz-transform: rotateY(-90deg) rotateZ(90deg);
	      -ms-transform: rotateY(-90deg) rotateZ(90deg);
	      transform: rotateY(-90deg) rotateZ(90deg);
	    }
	    50% {
	      -moz-transform: rotateY(-180deg) rotateZ(90deg);
	      -ms-transform: rotateY(-180deg) rotateZ(90deg);
	      transform: rotateY(-180deg) rotateZ(90deg);
	    }
	    66% {
	      -moz-transform: rotateY(-270deg) rotateX(90deg);
	      -ms-transform: rotateY(-270deg) rotateX(90deg);
	      transform: rotateY(-270deg) rotateX(90deg);
	    }
	    83% {
	      -moz-transform: rotateX(90deg);
	      -ms-transform: rotateX(90deg);
	      transform: rotateX(90deg);
	    }
	  }
	  
  .cubespinner {

    -webkit-animation-name: spincube;
    -webkit-animation-timing-function: ease-in-out;
    -webkit-animation-iteration-count: infinite;
    -webkit-animation-duration: 12s;

    animation-name: spincube;
    animation-timing-function: ease-in-out;
    animation-iteration-count: infinite;
    animation-duration: 12s;

    -webkit-transform-style: preserve-3d;
    -moz-transform-style: preserve-3d;
    -ms-transform-style: preserve-3d;
    transform-style: preserve-3d;

    -webkit-transform-origin: 40px 40px 0;
    -moz-transform-origin: 40px 40px 0;
    -ms-transform-origin: 40px 40px 0;
    transform-origin: 40px 40px 0;
  }

  .cubespinner div {
    position: absolute;
    width: 80px;
    height: 80px;
    border: 1px solid #ccc;
    background: rgba(255,255,255,0.8);
    box-shadow: inset 0 0 20px rgba(0,0,0,0.2);
    line-height: 80px;
    text-align: center;
    font-size: 20px;
  }

  .cubespinner .face1 {
    -webkit-transform: translateZ(40px);
    -moz-transform: translateZ(40px);
    -ms-transform: translateZ(40px);
    transform: translateZ(40px);
  }
  .cubespinner .face2 {
    -webkit-transform: rotateY(90deg) translateZ(40px);
    -moz-transform: rotateY(90deg) translateZ(40px);
    -ms-transform: rotateY(90deg) translateZ(40px);
    transform: rotateY(90deg) translateZ(40px);
  }
  .cubespinner .face3 {
    -webkit-transform: rotateY(90deg) rotateX(90deg) translateZ(450px);
    -moz-transform: rotateY(90deg) rotateX(90deg) translateZ(40px);
    -ms-transform: rotateY(90deg) rotateX(90deg) translateZ(40px);
    transform: rotateY(90deg) rotateX(90deg) translateZ(40px);
  }
  .cubespinner .face4 {
    -webkit-transform: rotateY(180deg) rotateZ(90deg) translateZ(40px);
    -moz-transform: rotateY(180deg) rotateZ(90deg) translateZ(40px);
    -ms-transform: rotateY(180deg) rotateZ(90deg) translateZ(40px);
    transform: rotateY(180deg) rotateZ(90deg) translateZ(40px);
  }
  .cubespinner .face5 {
    -webkit-transform: rotateY(-90deg) rotateZ(90deg) translateZ(40px);
    -moz-transform: rotateY(-90deg) rotateZ(90deg) translateZ(40px);
    -ms-transform: rotateY(-90deg) rotateZ(90deg) translateZ(40px);
    transform: rotateY(-90deg) rotateZ(90deg) translateZ(40px);
  }
  .cubespinner .face6 {
    -webkit-transform: rotateX(-90deg) translateZ(40px);
    -moz-transform: rotateX(-90deg) translateZ(40px);
    -ms-transform: rotateX(-90deg) translateZ(40px);
    transform: rotateX(-90deg) translateZ(40px);
  }      
/*   -------------------------------------------------------------주사위 */
	#content {
		margin-top: 40px;
	}
	#lineWidth {
		border-bottom: 1px solid #737575;
		box-shadow: 0 1px #AAADAE;
     	margin-left: 15px; 
    	width: 230px;
    }
	#mainbox {
/* 		background: #e1e3e4; */
 		background-image: -moz-linear-gradient(top, #e1e3e4, #828283); /* Firefox 3.6 */ 
   		background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #828283),color-stop(1, #e1e3e4)); /* Safari & Chrome */
/*    	filter:  progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#e1e3e4', endColorstr='#9F9F9F'); /* IE6 & IE7 */ */
/*    	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#e1e3e4', endColorstr='#9F9F9F')"; /* IE8 */ */
		margin-top: 10px;
		width: 900px;
		height: 400px;
		padding: 30px;
		border-radius: 15px;
	}
  	#imgLine {
  		width: 220px;
   		height: 320px; 
  		margin-left: 20px;
  	}
	#imgLine > div{
		float: left; 
		width: 33%;
		opacity: 0.4;
		-webkit-transition: opacity 1s;
	}
   	#imgLine > div:HOVER {  
   	  	opacity: 1.0;
    }  
	#right {
		width: 550px;
	}
	#bigImg {	
		float: left;
		width:350px;
		-webkit-transition: 1s ease-in-out;
		-moz-transition: 1s ease-in-out;
    	-o-transition: 1s ease-in-out;
    	transition: 1s ease-in-out;
	}
	#left, #right{
		float: left;
	}
	#right img {
		border: 8px solid gray;
		height: 350px;
		width: 500px;
		box-shadow: 0 5px 35px rgba(0,0,0,.80);
	}
	#leftDown {
		color: #3F4243;
		width: 200px;
		height: 80px;
 		margin-left: 32px; 
		margin-top: 10px;
		font-size: 15px; 
		text-align: center;
	}
	img {
		border-radius: 15px;
		border: 1px solid white;
		width: 65px;
		height: 65px;
		margin-top: 5px;
		margin-left: 5px;
	}
	#bigImg:hover {
		transform: scale(1.3);
 	}
</style>
<div id="content">
	<div class="stage" style="width: 80px; height: 80px;">
	<div class="cubespinner">
		<div class="face1">갤러리</div>
		<div class="face2">YTC</div>
		<div class="face3"><img src="resources/images/footer.png" style="margin-top:8px;"/></div>
		<div class="face4">갤러리</div>
		<div class="face5">YTC</div>
		<div class="face6"><img src="resources/images/footer.png" style="margin-top:8px;"/></div>
	</div>
</div>
<div id="mainbox">
	<div id="left">
		<div id="imgLine">
			<div class="img01"><img src="resources/images/gallery/img01.JPG"/></div>
			<div class="img02"><img src="resources/images/gallery/img02.JPG"/></div>
			<div class="img03"><img src="resources/images/gallery/img03.JPG"/></div>
			<div class="img04"><img src="resources/images/gallery/img04.JPG"/></div>
			<div class="img05"><img src="resources/images/gallery/img05.JPG"/></div>
			<div class="img06"><img src="resources/images/gallery/img06.JPG"/></div>
			<div class="img07"><img src="resources/images/gallery/img07.JPG"/></div>
			<div class="img08"><img src="resources/images/gallery/img08.JPG"/></div>
			<div class="img09"><img src="resources/images/gallery/img09.JPG"/></div>
			<div class="img10"><img src="resources/images/gallery/img10.JPG"/></div>
			<div class="img11"><img src="resources/images/gallery/img11.JPG"/></div>
			<div class="img12"><img src="resources/images/gallery/img12.JPG"/></div></div>
		<div id="lineWidth"></div>
		<div id="leftDown">
		<% 
		switch (Integer.parseInt(imgNum)){
			case 1 : %>2011년 'MBN 플랫폼 서비스'<br/>교육센터 협약식.<%; break;
			case 2 : %>2012년 한국 체육대학교<br/>희망취업 박람회.<%; break;
			case 3 : %>외국인주민 복지지원센터<br/>개관식.<%; break;
			case 4 : %>국가기간·전략산업직종훈련<br/>협약 체결식.<%; break;
			case 5 : %>스포츠 마케팅 현장실습.<%; break;
			case 6 : %>2014년 외국인 무료교육.<%; break;
			case 7 : %>여성 취업 박람회.<%; break;
			case 8 : %>2015년 YTC직업전문학교<br/>입학식.<%; break;
			case 9 : %>물류유통관리 과정 수료식.<%; break;
			case 10 : %>한국 도시농업 조경진흥원<br/>자격검정장 협약식.<%; break;
			case 11 : %>스포츠마케팅 제8기 수료식.<%; break;
			case 12 : %>ERP생산정보시스템 수료식.<%; break;
			} 
		%></div>
	</div>
	<div id="right">
		<span id="bigImg"><img src="resources/images/gallery/img<%=imgNum %>.JPG" /></span></div>
	</div>
</div>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
	$(document).ready(function(){
		$("#imgLine img").attr({width:75, height:75})
		$("#imgLine img").click(function(){
			var imgSrc = $(this).attr("src");	
			var img = "<img src='"+imgSrc+"'width='500px' height='350px'/>";
			$("#bigImg").html(img);
			if(imgSrc=="resources/images/gallery/img01.JPG"){
 				$("#leftDown").html("2011년 'MBN 플랫폼 서비스'<br/>교육센터 협약식.");
 			} else if(imgSrc=="resources/images/gallery/img02.JPG"){
 				$("#leftDown").html("2012년 한국 체육대학교<br/>희망취업 박람회.");
 			} else if(imgSrc=="resources/images/gallery/img03.JPG"){
 				$("#leftDown").html("외국인주민 복지지원센터<br/>개관식.");
 			} else if(imgSrc=="resources/images/gallery/img04.JPG"){
 				$("#leftDown").html("국가기간·전략산업직종훈련<br/>협약 체결식.");
 			} else if(imgSrc=="resources/images/gallery/img05.JPG"){
 				$("#leftDown").html("스포츠 마케팅 현장실습.");
 			} else if(imgSrc=="resources/images/gallery/img06.JPG"){
 				$("#leftDown").html("2014년 외국인 무료교육.");
 			} else if(imgSrc=="resources/images/gallery/img07.JPG"){
 				$("#leftDown").html("여성 취업 박람회.");
 			} else if(imgSrc=="resources/images/gallery/img08.JPG"){
 				$("#leftDown").html("2015년 YTC직업전문학교<br/>입학식.");
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