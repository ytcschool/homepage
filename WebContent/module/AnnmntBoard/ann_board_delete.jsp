<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%
	int num=Integer.parseInt(request.getParameter("num"));
%>
</head>

<body>
<form name="deleteForm" action="<%=request.getContextPath() %>/AnnmntDeleteAction.do?num=<%=num %>" 
	method="post">
<table border=1>
<tr>
	<td>
		<font size=2>�� ��й�ȣ : </font>
	</td>
	<td>
		<input name="ANNBOARD_PASS" type="password">
	</td>
</tr>
<tr>
	<td colspan=2 align=center>
		<a href="javascript:deleteForm.submit()">����</a>
		&nbsp;&nbsp;
		<a href="javascript:history.go(-1)">���ư���</a>
	</td>
</tr>
</table>
</form>
</body>

</html>