<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
	int num=Integer.parseInt(request.getParameter("num"));
%>
<style>
	#qnalist-wrapper {
			padding-top: 40px;
			padding-bottom: 50px;
			height: 550px;
		}
	table {
		margin: 80px auto;
		border: 1px solid black;
		height: 100px;
		width: 200px;
	}
</style>
<div id="content">
<div id="qnalist-wrapper">
<form name="deleteForm" action="./BoardDeleteAction.do?num=<%=num %>" 
	method="post">	
<div align="center" valign="middle">
	<ul style="font-size:25pt; padding-bottom:30px;">
	<span style="background-color:#DCEBFF">Q/A �Խ���</ul>	
</div>
<table>
<tr>
	<td>
		<font size=2>�� ��й�ȣ </font>
	</td>
	<td>
		<input name="BOARD_PASS" type="password" size="10" maxlength="10">
	</td>
</tr>
<tr>
	<td colspan=2 align=center>
		<a href="javascript:deleteForm.submit()">����</a>
		&nbsp; &nbsp; &nbsp;
		<a href="javascript:history.go(-1)">���ư���</a>
	</td>
</tr>
</table>
</form>
</div>
</div>