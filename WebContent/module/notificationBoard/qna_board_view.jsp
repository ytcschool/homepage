<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="kr.or.ytc.qnaboard.model.*" %>
<%
	BoardBean board = (BoardBean)request.getAttribute("boarddata");
%>

<div id="content">
	<title>MVC �Խ���</title>

<!-- �Խ��� ���� -->
<table cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="5">MVC �Խ���</td>
	</tr>
	
	<tr>
		<td style="font-family:����; font-size:12" height="16">
			<div align="center">�� ��&nbsp;&nbsp;</div>
		</td>
		
		<td style="font-family:����; font-size:12">
		<%=board.getBOARD_SUBJECT()%>
		</td>
	</tr>
	
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	
	<tr>
		<td style="font-family:����; font-size:12">
			<div align="center">�� ��</div>
		</td>
		<td style="font-family:����; font-size:12">
			<table border=0 width=490 height=250 style="table-layout:fixed">
				<tr>
					<td valign=top style="font-family:����; font-size:12">
					<%=board.getBOARD_CONTENT() %>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td style="font-family:����; font-size:12">
			<div align="center">÷������</div>
		</td>
		<td style="font-family:����; font-size:12">
		<%if(!(board.getBOARD_FILE()==null)){ %>
		<a href="./boardUpload/<%=board.getBOARD_FILE()%>">
			<%=board.getBOARD_FILE() %>
		</a>
		<%} %>
		</td>
	</tr>
	
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;"></td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	
	<tr align="center" valign="middle">
		<td colspan="5">
			<font size=2>
			<a href="./BoardReplyView.do?num=<%=board.getBOARD_NUM() %>">
			[�亯]
			</a>&nbsp;&nbsp;
			<a href="./BoardModify.do?num=<%=board.getBOARD_NUM() %>">
			[����]
			</a>&nbsp;&nbsp;
			<a href="./BoardDelete.do?num=<%=board.getBOARD_NUM() %>">
			[����]
			</a>&nbsp;&nbsp;
			<a href="./BoardList.do">[���]</a>&nbsp;&nbsp;
			</font>
		</td>
	</tr>
</table>
<!-- �Խ��� ���� -->
</div>