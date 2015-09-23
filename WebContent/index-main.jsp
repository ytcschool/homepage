<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link href="resources/css/index.css" type="text/css" rel="stylesheet" /> 

<div id="content">
	<div id="content-wrapper">
<%
	// 로그인 성공 시
	if (session.getAttribute("id") != null) {	
		String sessionId = (String)session.getAttribute("id");
		String sessionName = (String)session.getAttribute("name");
		String userName = (String)request.getParameter("MEMBER_NAME");
		
%>	
	<div id="loginSuccess">	
		<p><b><%out.println("<br/>" + sessionName + "님 <br/>" +"환영합니다.");%></b></p>
		<a href="./MemberLogoutAction.me" class="button">&nbsp;&nbsp;로그아웃&nbsp;&nbsp;</a>
	</div>
<%
	// 로그인 실패 시
	} else if (session.getAttribute("id") == null) {		
%>

<!-- 로그인 / 회원가입 기능 -->
	<aside id="main_aside">
		<input id="first" type ="radio" name="tab" checked="checked" onclick="disappear()" />
		<input id="second" type="radio" name="tab" onclick="appear()" />
		<section class="buttons">
			<label for="first">로그인</label>
			<label for="second">회원가입</label>
		</section>
		
		<!-- 로그인 배너 -->
		<div id="left_item" class="left_item">
		<br /><br/>
		
		<script> var checkId = null; </script>
			
			<form name="loginform" action="./MemberLoginAction.me" method="post">
			<input id="memId" class="loginInput" type="text" name="MEMBER_ID" placeholder="ID" size="20">
			<br /><br />
			<input id="memPw" class="loginInput" type="password" name="MEMBER_PW" placeholder="Password" size="20">
			<br /><br/>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
			<p id="loginbtn">
			<a href="javascript:checkId()" class="button" id="signInButton">&nbsp;&nbsp;&nbsp;로그인&nbsp;&nbsp;&nbsp;</a>&nbsp;&nbsp; 
			</p>
			</form>
			<br />
		</div>
	
		<!-- 회원가입 배너 -->
		<div id="right_item">
		<br/>
		
		<script> var checkForm = null; </script>
		
		<form name="joinform" action="./MemberJoinAction.me" method="post">
			<input id="MEMBER_ID" class="joinInput" type="text" name="MEMBER_ID" placeholder="ID" size="6"/>
			<input id="id_check" type="button" name="id_check" value="중복확인" size="5" />&nbsp;
			<input id="signPw" class="joinInput" type="password" name="MEMBER_PW" placeholder="Password" size="7"/><br /><br />
			<input id="signName" class="joinInput" type="text" name="MEMBER_NAME" placeholder="Name" size="7"/>&nbsp;&nbsp;
			<input id="signEmail" class="joinInput" type="text" name="MEMBER_EMAIL" placeholder="E-mail" size="15"/><br /><br />
			
			<b>생년월일:</b>
			<select name="MEMBER_YEAR">
				<%for(int year=2010; year>=1930; year--){%><option><%=year%></option><%}%>
			</select>&nbsp;
			
			<select name="MEMBER_MONTH">
				<%for(int month=1; month<=12; month++){%><option><%=month%></option><%}%>
			</select>&nbsp;
			
			<select name="MEMBER_DAY"><%for(int day=1; day<=31; day++){%><option><%=day%></option><%}%>
			</select><br /><br />
			 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>성별:</b>&nbsp; <input type="radio" name="MEMBER_GENDER" value="male"/>남자&nbsp;&nbsp;
			<input type="radio" name="MEMBER_GENDER" value="female"/>여자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			<br />&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
			<p id="signupbtn">
			<a href="javascript:checkForm()" class="button" id="joinButton">&nbsp;&nbsp;&nbsp;회원가입&nbsp;&nbsp;&nbsp;</a>&nbsp;&nbsp; 
			<a href="javascript:joinform.reset()" class="button" id="resetButton">&nbsp;&nbsp;다시작성&nbsp;&nbsp;</a>
			</p>
			</form>
		</div>
	</aside>
	<%	} %>
 	<div class="slider">
        <div class="slide-viewer">
          <div class="slide-group">
            <div class="slide slide-1">
              <img src="resources/images/banner1.png" width="100%" height="350px"/>
            </div>
            <div class="slide slide-2">
              <img src="resources/images/banner2.png" width="100%" height="350px"/>
            </div>
            <div class="slide slide-3">
              <img src="resources/images/banner3.png" width="100%" height="350px"/>
            </div>
            <div class="slide slide-4">
              <img src="resources/images/banner4.png" width="100%" height="350px"/>
            </div>
          </div>
        </div>
        <div class="slide-buttons"></div>
      </div>
    <div id="annmnt_box">
    <div id="bgcolor">
	<h1 id="gTitle">Gallery</h1>
		<ul id="banner">
			<li><a href="gallery.view?imgNum=01"><img src="resources/images/gallery/img01.JPG" width="250px" height="150px"/></a></li>
			<li><a href="gallery.view?imgNum=02"><img src="resources/images/gallery/img02.JPG" width="250px" height="150px"/></a></li>
			<li><a href="gallery.view?imgNum=03"><img src="resources/images/gallery/img03.JPG" width="250px" height="150px"/></a></li>
			<li><a href="gallery.view?imgNum=04"><img src="resources/images/gallery/img04.JPG" width="250px" height="150px"/></a></li>		
			<li><a href="gallery.view?imgNum=05"><img src="resources/images/gallery/img05.JPG" width="250px" height="150px"/></a></li>
			<li><a href="gallery.view?imgNum=06"><img src="resources/images/gallery/img06.JPG" width="250px" height="150px"/></a></li>
			<li><a href="gallery.view?imgNum=07"><img src="resources/images/gallery/img07.JPG" width="250px" height="150px"/></a></li>
			<li><a href="gallery.view?imgNum=08"><img src="resources/images/gallery/img08.JPG" width="250px" height="150px"/></a></li>
			<li><a href="gallery.view?imgNum=09"><img src="resources/images/gallery/img09.JPG" width="250px" height="150px"/></a></li>
			<li><a href="gallery.view?imgNum=10"><img src="resources/images/gallery/img10.JPG" width="250px" height="150px"/></a></li>		
			<li><a href="gallery.view?imgNum=11"><img src="resources/images/gallery/img11.JPG" width="250px" height="150px"/></a></li>
			<li><a href="gallery.view?imgNum=12"><img src="resources/images/gallery/img12.JPG" width="250px" height="150px"/></a></li>
		</ul>
	</div>
    </div>
    <div id="consult_box"><img src="resources/images/consult.png" width="100%" height="100%"/></div>
	</div>
</div>

<!-- 경고창 디자인 인터페이스 -->
<link rel="stylesheet" href="resources/css/alertify.core.css" />
<link rel="stylesheet" href="resources/css/alertify.default.css" id="toggleCSS" />
<script src="resources/js/alertify.min.js"></script>

<!-- ID 중복체크 -->
<script src="http://code.jquery.com/jquery.js"></script>
<script>
	$(document).ready(function(){
		$('#id_check').click(function(){
			var member_id = $('#MEMBER_ID').val();
			if (member_id != "" && member_id != null) {
				$.post('id_check.jsp', 'MEMBER_ID='+member_id, function(data) {
					console.log(data);
					console.log(typeof data);
					if (data == "true") {
							alertify.alert("해당 아이디 사용 불가능");
							$('div.alertify-dialog').addClass('color-red');
							$('.alertify-button-ok, .alertify-button-ok:hover, .alertify-button-ok:focus').addClass('bgcolor-red');
							$('.alertify-button:hover').addClass('bgcolor-red');				
					} else {
							alertify.alert("해당 아이디 사용 가능");
							$('div.alertify-dialog').addClass('color-blue');
							$('.alertify-button-ok, .alertify-button-ok:hover, .alertify-button-ok:focus').addClass('bgcolor-green');
							$('.alertify-button:hover').addClass('bgcolor-green');
					}
				});
			} else {
				alertify.alert("You miss ID!");
				$('div.alertify-dialog').addClass('color-red');
				$('.alertify-button-ok, .alertify-button-ok:hover, .alertify-button-ok:focus').addClass('bgcolor-red');
				$('.alertify-button:hover').addClass('bgcolor-red');
			} // end of if
		}); // end of id_check	
	});
</script>

<!-- Sign-In / Sign-Up -->
<script src="http://code.jquery.com/jquery.js"></script>
<script>
 document.getElementById("main_aside").style.borderStyle = "none";
 var mainAside = document.getElementById("main_aside");
 var appear = function() {
 	mainAside.style.border = "1px solid gray";
 };
 var disappear = function() {
	mainAside.style.border = "none";
};

// 로그인 누락 정보 경고 기능
checkId = function(){
	var form = $('form[name="loginform"]')[0];
	if($("#memId").val()==null || $("#memId").val()==""){
		alertify.alert("아이디를 누락했습니다.");
		$('div.alertify-dialog').addClass('color-red');
		$('.alertify-button-ok, .alertify-button-ok:hover, .alertify-button-ok:focus').addClass('bgcolor-red');
		$('.alertify-button:hover').addClass('bgcolor-red');	
		$("#memId").focus();
		return false;
	}else if($("#memPw").val()==null || $("#memPw").val()==""){
		alertify.alert("비밀번호를 누락했습니다.");
		$('div.alertify-dialog').addClass('color-red');
		$('.alertify-button-ok, .alertify-button-ok:hover, .alertify-button-ok:focus').addClass('bgcolor-red');
		$('.alertify-button:hover').addClass('bgcolor-red');	
		$("#memPw").focus();
		return false;
	}
	form.submit();
}

// 회원가입 누락 정보 경고 기능
checkForm = function(){
	var form = $('form[name="joinform"]')[0];
	if($("#MEMBER_ID").val()==null || $("#MEMBER_ID").val()==""){
		alertify.alert("아이디를 누락했습니다.");
		$('div.alertify-dialog').addClass('color-red');
		$('.alertify-button-ok, .alertify-button-ok:hover, .alertify-button-ok:focus').addClass('bgcolor-red');
		$('.alertify-button:hover').addClass('bgcolor-red');
		$("#MEMBER_ID").focus();
		return false;
	}else if($("#signPw").val()==null || $("#signPw").val()==""){
		alertify.alert("비밀번호를 누락했습니다.");
		$('div.alertify-dialog').addClass('color-red');
		$('.alertify-button-ok, .alertify-button-ok:hover, .alertify-button-ok:focus').addClass('bgcolor-red');
		$('.alertify-button:hover').addClass('bgcolor-red');
		$("#signPw").focus();
		return false;
	}else if($("#signName").val()==null || $("#signName").val()==""){
		alertify.alert("이름을 누락했습니다.");
		$('div.alertify-dialog').addClass('color-red');
		$('.alertify-button-ok, .alertify-button-ok:hover, .alertify-button-ok:focus').addClass('bgcolor-red');
		$('.alertify-button:hover').addClass('bgcolor-red');
		$("#signName").focus();
		return false;
	}else if($("#signEmail").val()==null || $("#signEmail").val()==""){
		alertify.alert("이메일을 누락했습니다.");
		$('div.alertify-dialog').addClass('color-red');
		$('.alertify-button-ok, .alertify-button-ok:hover, .alertify-button-ok:focus').addClass('bgcolor-red');
		$('.alertify-button:hover').addClass('bgcolor-red');
		$("#signEmail").focus();
		return false;
	}
	form.submit();
}

$(document).ready(function(){
});
</script>

<!-- 갤러리 -->
<script>
 $(document).ready(function(){
	$('#banner li').each(function(idx, item){
		$(this).css({'zIndex':((idx*-1)+12)+''});
	});
	var cnt = 0;
	var lis = $('#banner li');
	var inter = setInterval(function(){
		$(lis[cnt]).fadeOut('slow');
		cnt++;
		if(cnt > 11){
			cnt = 0;
			$('#banner li').each(function(idx, item){
				$(this).fadeIn('slow');
			});
		}
	}, 5000);
 });
</script>

<script src="resources/js/slider.js"></script>

<style>
input.joinInput:focus, input.loginInput:focus {
	outline: none !important;
	border-color: #33CC00;
 	box-shadow: 0 0 8px #33CC00;
	border-radius: 20px;
}
</style>
