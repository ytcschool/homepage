<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="kr.or.ytc.qnaboard.model.*" %>
<%
	List boardList=(List)request.getAttribute("boardlist");

    int listcount = 0, nowpage = 0, maxpage = 0, startpage = 0, endpage = 0;
    if (request.getAttribute("listcount") != null) {
	listcount=((Integer)request.getAttribute("listcount")).intValue();
	nowpage=((Integer)request.getAttribute("page")).intValue();
	maxpage=((Integer)request.getAttribute("maxpage")).intValue();
	startpage=((Integer)request.getAttribute("startpage")).intValue();
	endpage=((Integer)request.getAttribute("endpage")).intValue();
    }
%>

	<style>
		#qnalist-wrapper {
			padding-top: 40px;
			padding-bottom: 50px;
			height: 550px;
		}
		
		tr {
			border-bottom:2px solid black;
			height: 35px;
		}
		table {
			border-collapse:collapse;
			margin: 0 auto;
		}
		#writeBtnArea {
			width: 710px;
			margin: 0 auto;
			text-align: right;
		}
	</style>
	
<div id="content">	
<div id="qnalist-wrapper">
<%
if(listcount > 0){
%>
	<div align="center" valign="middle">
		<ul colspan="4" style="font-size:25pt; padding-bottom:30px;">
		<span style="background-color:#DCEBFF">Q/A 게시판</ul>	
	</div>
<table width=700 align="center">
	<tr id="abc" align="center" valign="middle" style="background:#DFD4D4">
		<td style="font-family:Tahoma;font-size:10pt;" width="13%" height="26">
			<div align="center">글번호</div>
		</td>
		<td style="font-family:Tahoma;font-size:10pt;" width="45%">
			<div align="center">제 &nbsp; &nbsp; 목</div>
		</td>
		<td style="font-family:Tahoma;font-size:10pt;" width="14%">
			<div align="center">작성자</div>
		</td>
		<td style="font-family:Tahoma;font-size:10pt;" width="17%">
			<div align="center">작성일</div>
		</td>
		<td style="font-family:Tahoma;font-size:10pt;" width="11%">
			<div align="center">조회수</div>
		</td>
	</tr>
	<%
		for(int i=0;i<boardList.size();i++){
			BoardBean bl=(BoardBean)boardList.get(i);
	%>
	<tr align="center" valign="middle" bordercolor="#333333"
		onmouseover="this.style.backgroundColor='F8F8F8'"
		onmouseout="this.style.backgroundColor=''">
		<td height="23" style="font-family:Tahoma;font-size:10pt;">
			<%=bl.getBOARD_NUM()%>
		</td>
		
		<td style="font-family:Tahoma;font-size:11pt;">
			<div align="left">
			<%if(bl.getBOARD_RE_LEV()!=0){ %>
				<%for(int a=0;a<=bl.getBOARD_RE_LEV()*2;a++){ %>
				&nbsp;
				<%} %>
				▶
			<%}else{
			
			} %>
			<a href="./BoardDetailAction.do?num=<%=bl.getBOARD_NUM()%>">
				<%=bl.getBOARD_SUBJECT()%>
			</a>
			</div>
		</td>
		
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><%=bl.getBOARD_NAME() %></div>
		</td>
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><%=bl.getBOARD_DATE() %></div>
		</td>	
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><%=bl.getBOARD_READCOUNT() %></div>
		</td>
	</tr>

	<%} %>
</table>
	<div align=center height=20>
		<ul colspan=7 style=font-family:Tahoma;font-size:12pt;>
			<%if(nowpage<=1){ %>
			[이전]&nbsp;
			<%}else{ %>
			<a href="./BoardList.do?page=<%=nowpage-1 %>">[이전]</a>&nbsp;
			<%} %>
			
			<%for(int a=startpage;a<=endpage;a++){
				if(a==nowpage){%>
				[<%=a %>]
				<%}else{ %>
				<a href="./BoardList.do?page=<%=a %>">[<%=a %>]</a>&nbsp;
				<%} %>
			<%} %>
			
			<%if(nowpage>=maxpage){ %>
			[다음]
			<%}else{ %>
			<a href="./BoardList.do?page=<%=nowpage+1 %>">[다음]</a>
			<%} %>
		</ul>
	</div>
	<%
    }
	else
	{
	%>
	<div align="center" valign="middle">
		<ul colspan="4" style="font-size:25pt; padding-bottom:30px">
		<span style="background-color:#DCEBFF">Q/A 게시판</span></ul>
		<ul align="center" style="border:1px solid white-space; height: 300px">
			<br/>
			<font size=6>Q/A list is not found</font>
		</ul>
	</div>
	<%
	}
	%>
	<div id="writeBtnArea">
	   		<a href="./BoardWrite.do">[글쓰기]</a>
	</div>
</div>
</div>