<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<style>

div#learning-box {
	height: 1050px;	 	
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
	function OnMouseIn (elem) {
	    elem.style.border = "2px solid blue";
	}
	function OnMouseOut (elem) {
	    elem.style.border = "";
	}

	function setCursorByID(id,cursorStyle) {
		 var elem;
		 if (document.getElementById && (elem=document.getElementById(id)) ) {
		 		if (elem.style) elem.style.cursor=pointer;
		 }
	}

	
	$(document).ready(function(){

		$('#1').click(function() {
			document.getElementById("HT#1").style.border ="5px solid blue";
			document.getElementById("HT#2").style.border ="";
			document.getElementById("HT#3").style.border ="";
			$('#i1').show();
			$('#i2').hide();
			$('#i3').hide();			
		});
		
		$('#2').click(function() {
			document.getElementById("HT#1").style.border ="";
			document.getElementById("HT#2").style.border ="5px solid blue";
			document.getElementById("HT#3").style.border ="";
			$('#i1').hide();
			$('#i2').show();
			$('#i3').hide();		
		});
		
		$('#3').click(function() {
			document.getElementById("HT#1").style.border ="";
			document.getElementById("HT#2").style.border ="";
			document.getElementById("HT#3").style.border ="5px solid blue";
			$('#i1').hide();
			$('#i2').hide();
			$('#i3').show();
		});
				
	});

</script>

<div id="content">
	<div id="learning-box">

	
	<h1>모집 과정</h1>
	<br/><br/>
	<h3><a href="courseLessons/Guidelines.view ">모집 안내 및 절차 확인하기 [Click!]</a></h3>	
	<br/><br/>
	<h3>모집 과정 안내 [이미지를 클릭하세요]</h3>
		<table>
			<tr>
				<td id="1">
					<b>관광/스포츠 분야</b><br/>
					<span style="cursor:pointer">
					<img id="HT#1" src="resources/images/Guideline/learning3.png" border="0" width="300" height="200">
					</span>
				</td>
				<td id="2">
					<b>IT 분야</b><br/>
					<span style="cursor:pointer">
					<img id="HT#2" src="resources/images/Guideline/learning1.png" border="0" width="300" height="200">
					</span>
				</td>
				<td id="3">
					<b>일반 사무 분야</b><br/>
					<span style="cursor:pointer">
					<img id="HT#3" src="resources/images/Guideline/learning2.png" border="0" width="300" height="200">
					</span>
				</td>
			</tr>													
		</table>
	
	<h3>상세 과정 [이미지를 클릭하세요]</h3>
		<div id="i1">
			<a href="courseLessons/Tourism.view"><img id="img1" src="resources/images/Guideline/Tourism.JPG" width="812" onmouseover="OnMouseIn (this)" onmouseout="OnMouseOut (this)"></a><br/><br/>
			<a href="courseLessons/SportsMarketing.view"><img id="img2" src="resources/images/Guideline/SportsMarketing.JPG" width="813" onmouseover="OnMouseIn (this)" onmouseout="OnMouseOut (this)"></a>
		</div>
		<div id="i2">
			<a href="courseLessons/IT_Contents.view"><img id="img3" src="resources/images/Guideline/IT_Contents.JPG" width="818" onmouseover="OnMouseIn (this)" onmouseout="OnMouseOut (this)"></a><br/><br/>
			<a href="courseLessons/RFID-USN.view"><img id="img4" src="resources/images/Guideline/RFID-USN.JPG" width="810" onmouseover="OnMouseIn (this)" onmouseout="OnMouseOut (this)"></a>
		</div>
		<div id="i3">
			<a href="courseLessons/ERP.view"><img id="img5" src="resources/images/Guideline/ERP.JPG" width="814" onmouseover="OnMouseIn (this)" onmouseout="OnMouseOut (this)"></a><br/><br/>
			<a href="courseLessons/Planning.view"><img id="img6" src="resources/images/Guideline/Planning.JPG" width="806" onmouseover="OnMouseIn (this)" onmouseout="OnMouseOut (this)"></a><br/><br/>
			<a href="courseLessons/EnterpriseMarketing.view"><img id="img7" src="resources/images/Guideline/EnterpriseMarketing.JPG" width="812" onmouseover="OnMouseIn (this)" onmouseout="OnMouseOut (this)"></a>
		</div>
	</div>
</div>