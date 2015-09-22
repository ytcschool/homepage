<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- �α��� / ȸ������ ��Ÿ�� -->
<link href="resources/css/index.css" type="text/css" rel="stylesheet" /> 

<div id="content">
	<div id="content-wrapper">
<%
	// �α��� ���� ��
	if (session.getAttribute("id") != null) {	
		String sessionId = (String)session.getAttribute("id");
		String sessionName = (String)session.getAttribute("name");
		String userName = (String)request.getParameter("MEMBER_NAME");
		
%>	
	<div id="loginSuccess">	
		<p><b><%out.println("<br/>" + sessionName + "<br/>" +"Welcome!");%></b></p>
		<a href="./MemberLogoutAction.me" class="button">&nbsp;&nbsp;LogOut&nbsp;&nbsp;</a>
	</div>
<%
	// �α��� ���� �� (Ȥ�� �α��� ��)
	} else if (session.getAttribute("id") == null) {
%>

<!-- �α��� / ȸ������ ��� -->
	<aside id="main_aside">
		<input id="first" type ="radio" name="tab" checked="checked" onclick="disappear()" />
		<input id="second" type="radio" name="tab" onclick="appear()" />
		<section class="buttons">
			<label for="first">Sign-In</label>
			<label for="second">Sign-Up</label>
		</section>
		
		<!-- �α��� ��� -->
		<div id="left_item" class="left_item">
			<br /><br/>
			
			<form name="loginform" action="./MemberLoginAction.me" method="post">
			<input id="memId" class="loginInput" type="text" name="MEMBER_ID" placeholder="ID" size="20">
			<br /><br />
			<input id="memPw" class="loginInput" type="password" name="MEMBER_PW" placeholder="Password" size="20">
			<br /><br/>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
			<p id="loginbtn">
			<a href="javascript:loginform.submit()" class="button" id="signInButton">&nbsp;&nbsp;&nbsp;Sign-In&nbsp;&nbsp;&nbsp;</a>&nbsp;&nbsp; 
			</p>
			</form>
			<br />
		</div>
	
		<!-- ȸ������ ��� -->
		<div id="right_item">
		<br/>
		<form name="joinform" action="./MemberJoinAction.me" method="post">
			<input class="joinInput" type="text" name="MEMBER_ID" placeholder="ID" size="10"/>&nbsp;&nbsp;&nbsp;
			<input class="joinInput" type="password" name="MEMBER_PW" placeholder="Password" size="10"/><br /><br />
			<input class="joinInput" type="text" name="MEMBER_NAME" placeholder="Name" size="10"/>&nbsp;&nbsp;&nbsp;
			<input class="joinInput" type="text" name="MEMBER_EMAIL" placeholder="E-mail" size="10"/><br /><br />
			
			Birth&nbsp;Date:
			<select name="MEMBER_YEAR">
				<%for(int year=2010; year>=1930; year--){%><option><%=year%></option><%}%>
			</select>&nbsp;
			
			<select name="MEMBER_MONTH">
				<%for(int month=1; month<=12; month++){%><option><%=month%></option><%}%>
			</select>&nbsp;
			
			<select name="MEMBER_DAY"><%for(int day=1; day<=31; day++){%><option><%=day%></option><%}%>
			</select><br /><br />
			 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gender:&nbsp; <input type="radio" name="MEMBER_GENDER" value="male"/>Male&nbsp;&nbsp;
			<input type="radio" name="MEMBER_GENDER" value="female"/>Female&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			<br />&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
			<p id="signupbtn">
			<a href="javascript:joinform.submit()" class="button" id="joinButton">&nbsp;&nbsp;&nbsp;Sign-Up&nbsp;&nbsp;&nbsp;</a>&nbsp;&nbsp; 
			<a href="javascript:joinform.reset()" class="button" id="resetButton">&nbsp;&nbsp;&nbsp;Reset&nbsp;&nbsp;&nbsp;</a>
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

<script src="resources/js/jquery-1.11.3.min.js"></script>
<script src="resources/js/slider.js"></script>
<!-- Sign-In / Sign-Up �׵θ� ���� -->
<script>
document.getElementById("main_aside").style.borderStyle = "none";
var mainAside = document.getElementById("main_aside");
var appear = function() {
	mainAside.style.border = "1px solid gray";
};
var disappear = function() {
	mainAside.style.border = "none";
};
</script>

<!-- ������ ��ũ��Ʈ -->
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