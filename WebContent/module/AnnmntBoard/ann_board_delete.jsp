<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>

h1 {
	border : 1px solid black;
	width : 130px;
	margin:auto;
	text-align: center;
	background : pink;
	margin-top : 40px;
	
}
table {
	margin-left : 350px;
	width : 300px;
	height : 100px;
	text-align : center;
	margin : 40px auto;
}

</style>
<%
	int num=Integer.parseInt(request.getParameter("num"));
%>
</head>

<body>
<form name="deleteForm" action="<%=request.getContextPath() %>/AnnmntDeleteAction.do?num=<%=num %>" 
	method="post">
	
	<h1>공지사항</h1>
	
	<table border=1 cellspacing="0">
		<tr>
			<td>
				비밀번호 입력:&nbsp;&nbsp;&nbsp;&nbsp;<input name="ANNBOARD_PASS" type="password"size="5" ><br/>
				<br/>
				<a href="javascript:deleteForm.submit()">삭제</a>&nbsp;&nbsp;&nbsp;&nbsp; 
				<a href="javascript:history.go(-1)">돌아가기</a>
			</td>
		</tr>
</table>
</form>
</body>

</html>