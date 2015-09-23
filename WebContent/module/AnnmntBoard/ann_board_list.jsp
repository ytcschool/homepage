<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="kr.or.ytc.web.annmntboard.model.*" %>
<%@ page import="kr.or.ytc.web.member.model.*" %>

<%
	List boardList=(List)request.getAttribute("boardlist");
	int listcount=((Integer)request.getAttribute("listcount")).intValue();
	int nowpage=((Integer)request.getAttribute("page")).intValue();
	int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
	int startpage=((Integer)request.getAttribute("startpage")).intValue();
	int endpage=((Integer)request.getAttribute("endpage")).intValue();

	
	// 세션아이디가 "admin인지 확인"
	if (session.getAttribute("id").equals("admin")) {
		System.out.println("화면출력");
	} else {
		System.out.println("화면비출력");
	}
%>

<script type="text/javascript">
	function chkdelete(){
		chkdel.submit();
	}
</script>

<style>
	#annList-wrapper {
	 	padding-top: 40px;
	 	padding-bottom: 50px;
	 	height: 550px; 
	 } 

	 table { 
	 	margin: 0 auto; 
	  	border-collapse: collapse; 
	 } 
	 tr { 
	 	border-bottom: 2px solid black; 
	 	height: 35px; 
	 } 
	
	 div#pagecount { 
	 	margin-top: 20px; 
	 	text-align: center;  
	 } 
	 div#write_delete { 
	 	text-align: right; 
	  	width: 800px;  
	 } 
	
</style>

<div id="content">
	<div id="annList-wrapper">
	
		<div align="center" valign="middle">
			<ul colspan="4" style="font-size:25pt; padding-bottom:30px;">
			<span style="background-color:#DCEBFF">공지사항</ul>	
		</div>
		<%
		if(listcount > 0){
			
		%>
		<form action="<%=request.getContextPath() %>/AnnmntChkDelete.do" method="post" name="chkdel">
			<table> 
			
				<tr align="center">
			
				<!-- 관리자 모드 /일반모드 뷰 : 체크박스-->
				<%
				if (session.getAttribute("id").equals("admin")) {
				%>
					<td style=width:2%>√</td>
				<%
				} else {
				%>

				<%	
				}
				%>
					<td style=width:8%>글번호</td>
					<td style=width:48%>제목</td>
					<td style=width:14%>작성자</td>
					<td style=width:17%>작성일</td>
					<td style=width:11%>조회수</td>
				</tr>		
				<%
				for(int i=0;i<boardList.size();i++){
					Announcement bl=(Announcement)boardList.get(i);
				%>
							
				<tr align="center">
				<!-- 관리자 모드 /일반모드 뷰 :체크박스 -->
				<%
				if (session.getAttribute("id").equals("admin")) {
				%>
				
					<td><input type="checkbox" name="chkdel" value="<%=bl.getANNBOARD_NUM() %>"/></td>
				
				<%
				} else {
				%>

				<%	
				}
				%>
			
				<%
				int cnt=0;
				
				cnt++;
				%>
 					<td><%=bl.getANNBOARD_NUM()%></td>
					<td align="left"><a href="<%=request.getContextPath() %>/AnnmntDetailAction.do?num=<%=bl.getANNBOARD_NUM()%>">
						<%=bl.getANNBOARD_SUBJECT()%></a></td>
					<td><%=bl.getANNBOARD_NAME() %></td>
					<td><%=bl.getANNBOARD_DATE() %></td>
					<td><%=bl.getANNBOARD_READCOUNT() %></td>
				</tr>
				<%} %>
				
			</table>
			
			</form>
			
			
			<div id="pagecount">
				<%if(nowpage<=1){ %>
					[이전]&nbsp;
				<%}else{ %>
					<a href="<%=request.getContextPath() %>/AnnmntList.do?page=<%=nowpage-1 %>">[이전]</a>
				<%} %>
				
				<%for(int a=startpage;a<=endpage;a++){
					if(a==nowpage){%>
						[<%=a %>]
					<%}else{ %>
						<a href="<%=request.getContextPath() %>/AnnmntList.do?page=<%=a %>">[<%=a %>]</a>&nbsp;
					<%} %>
				<%} %>
				
				<%if(nowpage>=maxpage){ %>
					[다음]
				<%}else{ %>
					<a href="<%=request.getContextPath() %>/AnnmntList.do?page=<%=nowpage+1 %>">[다음]</a>
				<%} %>
			</div>
		<%
		} else {
		%>
			<font size=5>등록된 글이 없습니다.</font>
		<%
		}
		%>
		
		<%
		if (session.getAttribute("id").equals("admin")) {
		%>
			<div id="write_delete">
				<a href="<%=request.getContextPath()%>/AnnmntWrite.do">[글쓰기]</a>
				<a href="javascript:chkdelete()">[글삭제]</a>
			</div>
		<%
		} else {
		%>

		<%	
		}
		%>
		
		
		
	</div>
</div> 