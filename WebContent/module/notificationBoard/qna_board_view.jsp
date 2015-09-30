<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.or.ytc.qnaboard.model.*" %>
<%
	BoardBean board = (BoardBean)request.getAttribute("boarddata");
%>


<style>
	#qnalist-wrapper {
			padding-top: 40px;
			padding-bottom: 50px;
			height: 470px;
		}
	#btnArea {
		width: 700px;
		margin: 30px auto;
		text-align: center;
		font-size: 16px;
	}
	table {
		margin: 0 auto;
	}
</style>
</head>
<div id="content">
<div id="qnalist-wrapper">
	<div align="center" valign="middle">
		<ul colspan="4" style="font-size:25pt; padding-bottom:30px;">
		<span style=background-color:#DCEBFF>Q/A 게시판</span></ul>
	</div>
<table cellspacing="0" width=540 align="center" border="1px solid black">	
	<tr>
		<td style="font-family:돋음; font-size:12px" height="30">
			<div align="center">제 목&nbsp;&nbsp;</div>
		</td>
		
		<td style="font-family:돋음; font-size:12">
		<div align="justify"> &nbsp; <%=board.getBOARD_SUBJECT()%></div>
		</td>
	</tr>

	<tr>
		<td style="font-family:돋음; font-size:15px" height="30px">
			<div align="center">내 용</div>
		</td>
		<td style="font-family:돋음; font-size:12">
			<table border=0 width=470 height=250 style="table-layout:fixed">
				<tr>
					<td valign=top style="font-family:돋음; font-size:12; word-break:break-all;">
					<div align="justify"> &nbsp; <%=board.getBOARD_CONTENT() %></div>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="30">
			<div align="center">첨부파일</div>
		</td>
		<td style="font-family:돋음; font-size:12">
		<%if(!(board.getBOARD_FILE()==null)){ %>
		<a href="./boardUpload/<%=board.getBOARD_FILE()%>">
			<%=board.getBOARD_FILE() %>
		</a>
		<%} %>
		</td>
	</tr>
</table>	

	<div id="btnArea">		
			<a href="./BoardReplyView.do?num=<%=board.getBOARD_NUM() %>">
			[답변]
			</a>&nbsp; &nbsp;
			<a href="./BoardModify.do?num=<%=board.getBOARD_NUM() %>">
			[수정]
			</a>&nbsp; &nbsp;
			<a href="./BoardDelete.do?num=<%=board.getBOARD_NUM() %>">
			[삭제]
			</a>&nbsp; &nbsp;
			<a href="./BoardList.do">[목록]</a>&nbsp;&nbsp;
	</div>
</div>
</div>