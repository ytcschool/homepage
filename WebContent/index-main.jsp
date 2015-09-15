<!-- �α��� / ȸ������ ��Ÿ�� -->
<style>
	#content {
		position: relative;
	}
	
	aside {
		position: absolute;
		width: 270px;
		height: 270px;
		right: 50px;
		top: 50px;
		border: 1px solid gray;
	}
	
	input[type=radio]:nth-of-type(1) {display:none;}
	input:nth-of-type(1) ~ div:nth-of-type(1){display:none;}
	input:nth-of-type(1):checked ~ div:nth-of-type(1) {display:block}
	input:nth-of-type(1):checked ~ div:nth-of-type(1) {border:none}
	
	input[type=radio]:nth-of-type(2) {display:none;}
	input:nth-of-type(2) ~ div:nth-of-type(2){display:none;}
	input:nth-of-type(2):checked ~ div:nth-of-type(2) {display:block;}
	input:nth-of-type(2):checked ~ div:nth-of-type(2) {border:none;}
	
	section.buttons{overflow:hidden;}
	section.buttons > label{
	/*��������*/
	display:block; float:left;
	/*ũ�� �� ���� ��ġ ����*/
	width:135px; heigth:30px;
	line-hegiht:30px;
	text-align:center;
	/*�׵θ� ����*/
	box-sizing:border-box;
	border:3px solid black;
	/*���� ����*/
	background:white;
	color:black;
	}
	input:nth-of-type(1):checked ~ section.buttons > label:nth-of-type(1){
		background-color: #ffff99;
		color:black;
	}
	input:nth-of-type(2):checked ~ section.buttons > label:nth-of-type(2){
		background-color: #ffcc99;
		color:black;
	}	
	
	/* �α��� ���� �� ��Ÿ�� ���� �κ� */
	div#loginSuccess {
		position: absolute;
		width: 270px;
		height: 270px;
		right: 50px;
		top: 50px;
		border: 2px solid orange;
		text-align: center;
		font-size: 20px;
		width: 155px;
		height: 60px;
		padding: 10px;
		background-color: #FFFFEB;
	}
	
	div#loginSuccess > p {
		margin-bottom: 13px;
	}
	
	p#signupbtn {
		margin: auto;
	}
	
	/* <a> �±� ��ư���� ���� */
	a.button {
		-webkit-appearance: button;
		-moz-appearance: button;
		appearance: button;
	}
	
	/* ��ũ �Ӽ� ���� */
	a:link {
		color: black; text-decoration: none;
	}
	a:visited {
		color: balck; text-decoration: none;
	}
	a:hover {
		color: balck; text-decoration: none;
	}
	div.right_item {
		background:white;
	}
</style>

<div id="content">
<%
	// �α��� ���� ��
	if (session.getAttribute("id") != null) {	
		String sessionId = (String)session.getAttribute("id");
		String userName = (String)request.getParameter("MEMBER_ID");
%>	
	<div id="loginSuccess">	
		<p><b><%out.println(sessionId + " Welcome!");%></b></p>
		<a href="./MemberLogoutAction.me" class="button">Logout</a>
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
			<br />
			<br />
			<form name="loginform" action="./MemberLoginAction.me" method="post">
			<input id="memId" type="text" name="MEMBER_ID" placeholder="ID" size="20">
			<br /><br />
			<input id="memPw" type="password" name="MEMBER_PW" placeholder="Password" size="20">
			<br />&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
			<p id="loginbtn">
			<a href="javascript:loginform.submit()" class="button" id="signInButton">&nbsp;&nbsp;&nbsp;Sign-In&nbsp;&nbsp;&nbsp;</a>&nbsp;&nbsp; 
			</p>
			</form>
			<br />
		</div>
	
		<!-- ȸ������ ��� -->
		<div class="right_item">
		<br/>
		<form name="joinform" action="./MemberJoinAction.me" method="post">
			<input type="text" name="MEMBER_ID" placeholder="ID" size="10"/>&nbsp;&nbsp;&nbsp;
			<input type="password" name="MEMBER_PW" placeholder="Password" size="10"/><br /><br />
			<input type="text" name="MEMBER_NAME" placeholder="Name" size="10"/>&nbsp;&nbsp;&nbsp;
			<input type="text" name="MEMBER_EMAIL" placeholder="E-mail" size="10"/><br /><br />
			
			Birth&nbsp;Date:
			<select name="MEMBER_YEAR">
				<%for(int year=2010; year>=1930; year--){%><option><%=year%></option><%}%>
			</select>&nbsp;
			
			<select name="MEMBER_MONTH">
				<%for(int month=1; month<=12; month++){%><option><%=month%></option><%}%>
			</select>&nbsp;
			
			<select name="MEMBER_DAY"><%for(int day=1; day<=31; day++){%><option><%=day%></option><%}%>
			</select><br /><br />
			 
			Gender: &nbsp; <input type="radio" name="MEMBER_GENDER" value="male"/>Male&nbsp;&nbsp;
			<input type="radio" name="MEMBER_GENDER" value="female"/>Female&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			<br />&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
			<p id="signupbtn">
			<a href="javascript:joinform.submit()" class="button">&nbsp;&nbsp;&nbsp;Sign-Up&nbsp;&nbsp;&nbsp;</a>&nbsp;&nbsp; 
			<a href="javascript:joinform.reset()" class="button">&nbsp;&nbsp;&nbsp;Reset&nbsp;&nbsp;&nbsp;</a>
			</p>
			</form>
		</div>
	</aside>
<%	
	} 
%>
</div>

<!-- Sign-In / Sign-Up �׵θ� ���� -->
<script>
document.getElementById("main_aside").style.borderStyle = "none";
var mainAside = document.getElementById("main_aside");
var appear = function() {
	mainAside.style.border = "1px solid black"
};
var disappear = function() {
	mainAside.style.border = "none";
};
</script>