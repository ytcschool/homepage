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
	<form name="loginform" action="./MemberLoginAction.me" method="post">
		<div>
			<table border=1>
				<tr>
					<td colspan="2" align=center><b><font size=5>Login Page</font></b></td>
				</tr>
				<tr>
					<td>ID :</td>
					<td><input type="text" name="MEMBER_ID" /></td>
				</tr>
				<tr>
					<td>PASSWORD :</td>
					<td><input type="password" name="MEMBER_PW" /></td>
				</tr>
				<tr>
					<td colspan="2" align=center>
					<a href="javascript:loginform.submit()">Sign-In</a>&nbsp;&nbsp; 
				</tr>
			</table>
		</div>
	</form>
	<br />
	
	<!-- 회원가입 기능 -->
	<form name="joinform" action="./MemberJoinAction.me" method="post">
		<div>
			<table border=1>
				<tr>
					<td colspan="2" align=center><b><font size=5>Sign-Up Page</font></b></td>
				</tr>
				<tr>
					<td>ID:</td>
					<td><input type="text" name="MEMBER_ID" />
				</tr>
				<tr>
					<td>PASSWORD:</td>
					<td><input type="password" name="MEMBER_PW" /></td>
				</tr>
				<tr>
					<td>NAME:</td>
					<td><input type="text" name="MEMBER_NAME" /></td>
				</tr>
				<tr>
					<td>BIRTH(EX: 881019):</td>
					<td><input type="text" name="MEMBER_AGE" maxlength=6 size=6 /></td>
				</tr>
				<tr>
					<td>GENDER:</td>
					<td>
						<input type="radio" name="MEMBER_GENDER" value="Male" checked />Male
						<input type="radio" name="MEMBER_GENDER" value="Female" />Female
					</td>
				</tr>
				<tr>
					<td>E-MAIL:</td>
					<td>
						<input type="text" name="MEMBER_EMAIL" size=30 />
					</td>
				</tr>
				<tr>
					<td colspan="2" align=center>
						<a href="javascript:joinform.submit()">Sign-Up</a>&nbsp;&nbsp; 
						<a href="javascript:joinform.reset()">Reset</a></td>
				</tr>
			</table>
		</div>
	</form>
<%	
	} 
%>
</div>