<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
	int num=Integer.parseInt(request.getParameter("num"));
%>
<div id="content">
<title>MVC �Խ���</title>
<form name="deleteForm" action="./BoardDeleteAction.do?num=<%=num %>" 
	method="post">
<table border=1>
<tr>
	<td>
		<font size=2>�� ��й�ȣ : </font>
	</td>
	<td>
		<input name="BOARD_PASS" type="password">
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
</div>