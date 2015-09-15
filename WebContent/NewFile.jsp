<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body><!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
	input[type=radio]:nth-of-type(1) {display:none;}
	input:nth-of-type(1) ~ div:nth-of-type(1){display:none;}
	input:nth-of-type(1):checked ~ div:nth-of-type(1) {display:block;}
	
	input[type=radio]:nth-of-type(2) {display:none;}
	input:nth-of-type(2) ~ div:nth-of-type(2){display:none;}
	input:nth-of-type(2):checked ~ div:nth-of-type(2) {display:block;}
	
	section.buttons{overflow:hidden;}
	section.buttons > label{
	/*수평정렬*/
		display:block; float:left;
	/*크기 및 글자 위치 지정*/
	width:100px; heigth:30px;
	line-hegiht:30px;
	text-align:center;
	/*테두리 지정*/
	box-sizing:border-box;
	border:1px solid black;
	/*색상 지정*/
	background:gray;
	color:white;
	}
	input:nth-of-type(1):checked ~ section.buttons > label:nth-of-type(1){
		background:white;
		color:black;
	}
	input:nth-of-type(2):checked ~ section.buttons > label:nth-of-type(2){
		background:white;
		color:black;
	}
	
	
</style>
</head>
<body>
<div>
<aside id="main_aside">

	<input id="first" type ="radio" name="tab" checked="checked"/>
	<input id="second" type="radio" name="tab"/>
	<section class="buttons">
		<label for="first">로그인</label>
		<label for="second">회원가입</label>
	</section>
	<div class="tab_item">
		<br/><br/>
		<input type="text" name="MEMBER_ID" placeholder="ID" size="20"><br/><br/>
		<input type="password" name="MEMBER_PW" placeholder="Password" size="20"><br/><br/><br/>
		 &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; <a href="javascript:loginform.submit()">Sign-In</a>&nbsp;&nbsp; 
	</div>
	
	<div class="tab_item">
	<br/>
	<form name="joinform" action="./MemberJoinAction.me" method="post">
		<input type="text" name="MEMBER_ID" placeholder="ID" size="10"/>&nbsp;&nbsp;&nbsp;
		<input type="password" name="MEMBER_PW" placeholder="Password" size="10"/><br/><br/>
		<input type="text" name="MEBER_NAME" placeholder="Name" size="10"/>&nbsp;&nbsp;&nbsp;
		<input type="text" name="MEMBER_EMAIL" placeholder="E-mail" size="10"/><br/><br/>
		Birthday:
		<select name="MEMBER_YEAR">
			<% 
			for(int year=2010; year>=1930; year--){
			%><option><%=year%></option>
			<% }%>
		</select>&nbsp;
		<select name="MEMBER_MONTH">
			<%
			for(int month=1; month<=12; month++){
			%><option><%=month%></option>
			<% }%>
		</select>&nbsp;
		<select name="MEMBER_DAY">
			<%
			for(int day=1; day<=31; day++){
			%><option><%=day%></option>
			<% }%>
			
		</select><br/><br/>
		
		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="MEMBER_GENDER" value="male"/>Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="MEMBER_GENDER" value="female"/>Female&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		<br /><br/>
		
		&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; <a href="javascript:joinform.submit()">Sign-Up</a>&nbsp;&nbsp; 
		<a href="javascript:joinform.reset()">Reset</a>
		
		</form>
	</div>
	
</aside>
</div>
</body>
</html>
</html>