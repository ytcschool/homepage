<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- �α��� / ȸ������ ��Ÿ�� -->
<link href="resources/css/index.css" type="text/css" rel="stylesheet" /> 

<div id="content">
	<div id="content-wrapper">
<%
	// �α��� ���� ��
	if (session.getAttribute("id") != null) {	
		String sessionId = (String)session.getAttribute("id");
		String userName = (String)request.getParameter("MEMBER_ID");
%>	
	<div id="loginSuccess">	
		<p><b><%out.println(sessionId + " Welcome!");%></b></p>
		<a href="./MemberLogoutAction.me" class="button">&nbsp;&nbsp;Logout&nbsp;&nbsp;</a>
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
<script>
var checkForm = null;
</script>
		<form name="joinform" action="./MemberJoinAction.me" method="post">
			<input id="MEMBER_ID" class="joinInput" type="text" name="MEMBER_ID" placeholder="ID" size="6"/>
			<input id="id_check" type="button" name="id_check" value="CHECK" size="5" />&nbsp;
			<input id="signPw" class="joinInput" type="password" name="MEMBER_PW" placeholder="Password" size="7"/><br /><br />
			<input id="signName" class="joinInput" type="text" name="MEMBER_NAME" placeholder="Name" size="6"/>&nbsp;&nbsp;
			<input id="signEmail" class="joinInput" type="text" name="MEMBER_EMAIL" placeholder="E-mail" size="15"/><br /><br />
			
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
			<a href="javascript:checkForm()" class="button" id="joinButton">&nbsp;&nbsp;&nbsp;Sign-Up&nbsp;&nbsp;&nbsp;</a>&nbsp;&nbsp; 
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
    <div id="annmnt_box">�������� �̴� ���</div>
    <div id="consult_box"><img src="resources/images/consult.png" width="100%" height="100%"/></div>
	</div>
</div>

<!-- ���â �ٹ̱� -->
<link rel="stylesheet" href="resources/css/alertify.core.css" />
<link rel="stylesheet" href="resources/css/alertify.default.css" id="toggleCSS" />
<script src="resources/js/alertify.min.js"></script>

<!-- ID �ߺ�üũ ��� -->
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
							alertify.alert("ID is not available");
					} else {
							alertify.alert("ID is available");
					}
				});
			} else {
				alert("You must input ID before ID Check!");
			} // end of if
		}); // end of id_check	
	});
</script>

<!-- Sign-In / Sign-Up �׵θ� ���� -->
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

checkForm = function(){
	var form = $('form[name="joinform"]')[0];
	if($("#MEMBER_ID").val()==null || $("#signId").val()==""){
		alert("You must input ID!");
		$("#MEMBER_ID").focus();
		return false;
	}else if($("#signPw").val()==null || $("#signPw").val()==""){
		alert("You must input Password!");
		$("#signPw").focus();
		return false;
	}else if($("#signName").val()==null || $("#signName").val()==""){
		alert("You must input Name!");
		$("#signName").focus();
		return false;
	}else if($("#signEmail").val()==null || $("#signEmail").val()==""){
		alert("You must input Email!");
		$("#signEmail").focus();
		return false;
	}
	form.submit();
}

$(document).ready(function(){
});
</script>
<script src="resources/js/jquery-1.11.3.min.js"></script>
<script src="resources/js/slider.js"></script>