<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="kr.or.ytc.web.annmntboard.model.*" %>

<%
	List boardList=(List)request.getAttribute("boardlist");
//	int listcount = 0, maxpage = 0, startpage = 0, endpage = 0, nowpage = 0;
	//if(request.getAttribute("listcount") != null) {
		int listcount=((Integer)request.getAttribute("listcount")).intValue();
		int nowpage=((Integer)request.getAttribute("page")).intValue();
		int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
		int startpage=((Integer)request.getAttribute("startpage")).intValue();
		int endpage=((Integer)request.getAttribute("endpage")).intValue();
	//}

%>
<style>
#annList-wrapper {
 	padding-top: 40px;
 	padding-bottom: 50px;
 	height: 300px; 
 } 
 h1 { */
 	border: 1px solid black; */
 	width: 150px;	 */
 	text-align: center; */
 	background: pink; */
 	margin: 40px auto; 
 } 
 table { 
 	margin: auto; 
 	width: 800px; 
  	border-collapse: collapse; 
 } 
 tr { 
 	border-bottom: 2px solid black; 
 	height: 43px; 
 } 

 div#pagecount { 
 	margin-top: 20px; 
 	text-align: center;  
 } 
 div#write { 
 	text-align: right; 
  	width: 870px;  
 } 

</style>

<div id="content">
	<div id="annList-wrapper">
	<h1>공지사항</h1>
<%
	if(listcount > 0){
		
	%>
	<table> 
	
		<tr align="center">
			<td style=width:8%>글번호</td>
			<td style=width:50%>제목</td>
			<td style=width:14%>작성자</td>
			<td style=width:17%>작성일</td>
			<td style=width:11%>조회수</td>
		</tr>		
		<%
		for(int i=0;i<boardList.size();i++){
			Announcement bl=(Announcement)boardList.get(i);
		%>
		<tr align="center">
			<td><%=bl.getANNBOARD_NUM()%></td>
			<td align="left"><a href="<%=request.getContextPath() %>/AnnmntDetailAction.do?num=<%=bl.getANNBOARD_NUM()%>">
				<%=bl.getANNBOARD_SUBJECT()%></a></td>
			<td><%=bl.getANNBOARD_NAME() %></td>
			<td><%=bl.getANNBOARD_DATE() %></td>
			<td><%=bl.getANNBOARD_READCOUNT() %></td>
		</tr>
		<%} %>
		
	</table>

	<div id="pagecount">
		<%if(nowpage<=1){ %>
		[이전]&nbsp;&nbsp;&nbsp;&nbsp;
		<%}else{ %>
		<a href="<%=request.getContextPath() %>/AnnmntList.do?page=<%=nowpage-1 %>">[이전]&nbsp;&nbsp;&nbsp;&nbsp;</a>
		<%} %>
		
		<%for(int a=startpage;a<=endpage;a++){
			if(a==nowpage){%>
			[<%=a %>]
			<%}else{ %>
			<a href="<%=request.getContextPath() %>/AnnmntList.do?page=<%=a %>">&nbsp;&nbsp;[<%=a %>]</a>
			<%} %>
		<%} %>
		
		<%if(nowpage>=maxpage){ %>
		&nbsp;&nbsp;&nbsp;&nbsp;[다음]
		<%}else{ %>
		<a href="<%=request.getContextPath() %>/AnnmntList.do?page=<%=nowpage+1 %>">&nbsp;&nbsp;&nbsp;&nbsp;[다음]</a>
		<%} %>
	</div>
	<%
	}
	else
	{
	%>
			<font size=5>등록된 글이 없습니다.</font>
	<%
	}
	%>
	
	<div id="write">
		<a href="<%=request.getContextPath()%>/AnnmntWrite.do">[글쓰기]</a>
	</div>
	</div>
</div> 