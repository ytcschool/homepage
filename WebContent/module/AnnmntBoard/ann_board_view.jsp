<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="kr.or.ytc.web.annmntboard.model.*" %>
<%
	Announcement annboard = (Announcement)request.getAttribute("boarddata");
%>
    


<style>
h1 {
	border : 1px solid black;
	width : 150px;
	margin:auto;
	text-align: center;
	background : pink;
	margin-top : 40px;
	
}
table {
	margin : 40px auto 0px;
	float : center;
}
div#ankor_area {
	width : 1000px;
	text-align : center;
	margin : 40px auto;
}

div#ankor_area > a {
	margin: 0 30px;
}
tr#content_tr {
	cellpadding : 40px;
	vertical-align: top;
}

</style>


<div id="content">

<h1>공지사항 </h1>

	<table border="1" width="600" height="300" align="center" cellspacing="0">

		<tr height="50">
			<td width="100" align="center">제 목</td>
			<td width="500" align="left"><%=annboard.getANNBOARD_SUBJECT()%></td>
		</tr>
		<tr height="200" id="content_tr">
			<td width="100" align="center">내 용</td>
			<td width="500" align="left"><%=annboard.getANNBOARD_CONTENT() %></td>
		</tr>
		<tr height="50">
			<td width="100" align="center">첨부파일</td>
			<%if(!(annboard.getANNBOARD_FILE()==null)){ %>
			<td width="500"><a href="./module/annboardupload/<%=annboard.getANNBOARD_FILE()%>">
				<%=annboard.getANNBOARD_FILE() %></a></td>
			<%} %>
		</tr>
	
	</table>
	<div id="ankor_area">
		<a href="<%=request.getContextPath() %>/AnnmntModify.do?num=<%=annboard.getANNBOARD_NUM() %>">[수정]</a>
		<a href="<%=request.getContextPath() %>/AnnmntDelete.do?num=<%=annboard.getANNBOARD_NUM() %>">[삭제]</a>
		<a href="<%=request.getContextPath() %>/AnnmntList.do">[목록]</a>
	</div>
</div>

<!-- 게시판 수정
<table cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="5">YTC 임시 게시판</td>
	</tr>
	
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">제 목&nbsp;&nbsp;</div>
		</td>
		
		<td style="font-family:돋음; font-size:12">
		<%=annboard.getANNBOARD_SUBJECT()%>
		</td>
	</tr>
	
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">내 용</div>
		</td>
		<td style="font-family:돋음; font-size:12">
			<table border=0 width=490 height=250 style="table-layout:fixed">
				<tr>
					<td valign=top style="font-family:돋음; font-size:12">
					<%=annboard.getANNBOARD_CONTENT() %>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">첨부파일</div>
		</td>
		<td style="font-family:돋음; font-size:12">
		<%if(!(annboard.getANNBOARD_FILE()==null)){ %>
		<a href="./module/annboardupload/<%=annboard.getANNBOARD_FILE()%>">
			<%=annboard.getANNBOARD_FILE() %>
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
			<a href="<%=request.getContextPath() %>/AnnmntModify.do?num=<%=annboard.getANNBOARD_NUM() %>">
			[수정]
			</a>&nbsp;&nbsp;
			<a href="<%=request.getContextPath() %>/AnnmntDelete.do?num=<%=annboard.getANNBOARD_NUM() %>">
			[삭제]
			</a>&nbsp;&nbsp;
			<a href="<%=request.getContextPath() %>/AnnmntList.do">[목록]</a>&nbsp;&nbsp;
			</font>
		</td>
	</tr>
</table>

</body>
</html>
게시판 수정 -->