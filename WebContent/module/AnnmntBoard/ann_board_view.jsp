<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.or.ytc.web.annmntboard.model.*" %>
<%
	Announcement annboard = (Announcement)request.getAttribute("boarddata");
%>
    


<style>
	#annList-wrapper {
	 	padding-top: 40px;
	 	padding-bottom: 50px;
	 	height: 400px; 
	} 
	table {
		margin : 0 auto;
		float : center;
	}
	div#ankor_area {
		text-align : center;
		margin : 30px auto;
		width: 700px;
		font-size: 16px;
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
	<div id="annList-wrapper">

		<div align="center" valign="middle">
		<ul style="font-size:25pt; padding-bottom:30px;">
		<span style="background-color:#DCEBFF">공지사항</ul>	
		</div>
		
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
</div>

