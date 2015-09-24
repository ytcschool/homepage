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
	#content {
		margin-top: 40px;
	}
	#lineWidth {
		border-bottom: 1px solid #fff;
    	margin: 20px 15px;
    	width: 270px;
    }
	#smallImg {
		background: #e1e3e4;
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
    transform: scale(1.4);
 }
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

</style>
<div id="content">
	<div class="stage" style="width: 80px; height: 80px;">
	<div class="cubespinner">
		<div class="face1">갤러리</div>
		<div class="face2">YTC</div>
		<div class="face3"><img src="resources/images/footer.png" style="margin-top:15px;"/></div>
		<div class="face4">갤러리</div>
		<div class="face5">YTC</div>
		<div class="face6"><img src="resources/images/footer.png" style="margin-top:15px;"/></div>
	</div>
</div>
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