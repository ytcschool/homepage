<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<style>

div#learning-box {
	height: 1400px;	 	
}
div#i1 {
	display: none;
}
div#i2 {
	display: none;
}
div#i3 {
	display: none;
}

table {
	width : 1000px;
	height : 280px;
	margin : 10px auto;
}

h1 {
	margin: 30px 0;
	font-size: 27px;
	text-decoration: underline;
}
h3 {
	text-align: left;
}

</style>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
	function setCursorByID(id,cursorStyle) {
	 var elem;
	 if (document.getElementById &&
	    (elem=document.getElementById(id)) ) {
	  if (elem.style) elem.style.cursor=pointer;
	 }
	}
	
	function OnMouseIn(elem) {
		elem.style.border = "2px solid blue";
	}
	
	function OnMouseOut(elem) {
		elem.style.border = "";
	}
	
	$(document).ready(function(){
		$('HT#1').click(function() {
			$('HT#1').OnMouseIn();	
			$('HT#2').OnMouseOut();	
			$('HT#3').OnMouseOut();	
		});
		$('HT#2').click(function() {
			$('HT#1').OnMouseOut();	
			$('HT#2').OnMouseIn();	
			$('HT#3').OnMouseOut();	
		});
		$('HT#3').click(function() {
			$('HT#1').OnMouseOut();	
			$('HT#2').OnMouseOut();	
			$('HT#3').OnMouseIn();	
		});
		
		
		$('#1').click(function() {
			$('#i2').hide();
			$('#i3').hide();
			$('#i1').show();
		});
		
		$('#2').click(function() {
			$('#i1').hide();
			$('#i3').hide();
			$('#i2').show();
		
		});
		
		$('#3').click(function() {
			$('#i1').hide();
			$('#i2').hide();
			$('#i3').show();
	
		});
		
	});

</script>

<div id="content">
	<div id="learning-box">

	
	<h1>모집 과정</h1>
	<br/><br/><br/>
	<h3><a href="courseLessons/Guidelines.jsp ">모집 안내 및 절차 확인하기 [Click!]</a></h3>	
	<br/><br/><br/>
	<h3>모집 과정 안내 [이미지를 클릭하세요]</h3>
		
		<table>
			<tr>
				<td id="1"><b>관광/스포츠 분야</b><br/><span style="cursor:pointer"><img id="HT#1" src="resources/images/Guideline/learning3.png" width="300" height="200"></span></td>
				<td id="2"><b>IT 분야</b><br/><span style="cursor:pointer"><img id="HT#2" src="resources/images/Guideline/learning1.png" width="300" height="200"></span></td>
				<td id="3"><b>일반 사무 분야</b><br/><span style="cursor:pointer"><img id="HT#3" src="resources/images/Guideline/learning2.png" width="300" height="200"></span></td>
			</tr>													
		</table>
	
	<h3>상세 확인</h3>
	<br/>
		<div id="i1">
			<a href="courseLessons/Tourism.jsp"><img id="img1" src="resources/images/Guideline/Tourism.JPG" width="812" ></a><br/><br/>
			<a href="courseLessons/SportsMarketing.jsp"><img id="img2" src="resources/images/Guideline/SportsMarketing.JPG" width="813"></a>
		</div>
		<div id="i2">
			<a href="courseLessons/IT_Contents.jsp"><img id="img3" src="resources/images/Guideline/IT_Contents.JPG" width="818"></a><br/><br/>
			<a href="courseLessons/RFID-USN.jsp"><img id="img4" src="resources/images/Guideline/RFID-USN.JPG" width="810"></a>
		</div>
		<div id="i3">
			<a href="courseLessons/ERP.jsp"><img id="img5" src="resources/images/Guideline/ERP.JPG" width="814"></a><br/><br/>
			<a href="courseLessons/Planning.jsp"><img id="img6" src="resources/images/Guideline/Planning.JPG" width="806"></a><br/><br/>
			<a href="courseLessons/EnterpriseMarketing.jsp"><img id="img7" src="resources/images/Guideline/EnterpriseMarketing.JPG" width="812"></a>
		</div>
	</div>
</div>