<link href="/YTC-Website-v1.0/resources/css/member.css" type="text/css" rel="stylesheet" /> 

<div id="content">
<%
	// 로그인 성공 시
	if (session.getAttribute("id") != null) {	
		String sessionId = (String)session.getAttribute("id");
%>		
		<h2><%out.println(sessionId + " Welcome to YTC School!");%></h2>
		<a href="./MemberLogoutAction.me">Logout</a>
<%
	// 로그인 실패 시
	} else if (session.getAttribute("id") == null) {
%>

	<div id="login">
	<form name="loginform" action="./MemberLoginAction.me" method="post">
		
		<input type="text" name="MEMBER_ID" placeholder="ID" size="20"><br/><br/><br/>
		<input type="password" name="MEMBER_PW" placeholder="Password" size="20"><br/><br/><br/>
		<a href="javascript:loginform.submit()">Sign-In</a>&nbsp;&nbsp; 
		
	</form>
	</div>
	<br />
	
	<!-- 회원가입 기능 -->
	
	<div id="signup">
	<form name="joinform" action="./MemberJoinAction.me" method="post">
	
		<input type="text" name="MEMBER_ID" placeholder="ID" size="10">&nbsp;&nbsp;&nbsp;
		<input type="password" name="MEMBER_PW" placeholder="Password" size="10"><br/><br/>
		<input type="text" name="MEBER_NAME" placeholder="Name" size="10">&nbsp;&nbsp;&nbsp;
		<input type="text" name="MEMBER_EMAIL" placeholder="E-mail" size="10"><br/><br/>
		
		<select name="MEMBER_YEAR">
			<% 
			for(int year=2010; year>=1930; year--){
			%><option><%=year%></option>
			<% }%>
		</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<select name="MEMBER_MONTH">
			<%
			for(int month=1; month<=12; month++){
			%><option><%=month%></option>
			<% }%>
		</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<select name="MEMBER_DAY">
			<%
			for(int day=1; day<=31; day++){
			%><option><%=day%></option>
			<% }%>
			
		</select><br/><br/>
		
		<input type="radio" name="MEMBER_GENDER" value="male"/>Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="MEMBER_GENDER" value="female"/>Female&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<br /><br/>
		<a href="javascript:joinform.submit()">Sign-Up</a>&nbsp;&nbsp; 
		<a href="javascript:joinform.reset()">Reset</a>
		
		
	</form>
	</div>
	
<%	
	} 
%>
</div>