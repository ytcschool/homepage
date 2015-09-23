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

	
	// ���Ǿ��̵� "admin���� Ȯ��"
	if (session.getAttribute("id").equals("admin")) {
		System.out.println("ȭ�����");
	} else {
		System.out.println("ȭ������");
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
			<span style="background-color:#DCEBFF">��������</ul>	
		</div>
		<%
		if(listcount > 0){
			
		%>
		<form action="<%=request.getContextPath() %>/AnnmntChkDelete.do" method="post" name="chkdel">
			<table> 
			
				<tr align="center">
			
				<!-- ������ ��� /�Ϲݸ�� �� : üũ�ڽ�-->
				<%
				if (session.getAttribute("id").equals("admin")) {
				%>
					<td style=width:2%>��</td>
				<%
				} else {
				%>

				<%	
				}
				%>
					<td style=width:8%>�۹�ȣ</td>
					<td style=width:48%>����</td>
					<td style=width:14%>�ۼ���</td>
					<td style=width:17%>�ۼ���</td>
					<td style=width:11%>��ȸ��</td>
				</tr>		
				<%
				for(int i=0;i<boardList.size();i++){
					Announcement bl=(Announcement)boardList.get(i);
				%>
							
				<tr align="center">
				<!-- ������ ��� /�Ϲݸ�� �� :üũ�ڽ� -->
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
					[����]&nbsp;
				<%}else{ %>
					<a href="<%=request.getContextPath() %>/AnnmntList.do?page=<%=nowpage-1 %>">[����]</a>
				<%} %>
				
				<%for(int a=startpage;a<=endpage;a++){
					if(a==nowpage){%>
						[<%=a %>]
					<%}else{ %>
						<a href="<%=request.getContextPath() %>/AnnmntList.do?page=<%=a %>">[<%=a %>]</a>&nbsp;
					<%} %>
				<%} %>
				
				<%if(nowpage>=maxpage){ %>
					[����]
				<%}else{ %>
					<a href="<%=request.getContextPath() %>/AnnmntList.do?page=<%=nowpage+1 %>">[����]</a>
				<%} %>
			</div>
		<%
		} else {
		%>
			<font size=5>��ϵ� ���� �����ϴ�.</font>
		<%
		}
		%>
		
		<%
		if (session.getAttribute("id").equals("admin")) {
		%>
			<div id="write_delete">
				<a href="<%=request.getContextPath()%>/AnnmntWrite.do">[�۾���]</a>
				<a href="javascript:chkdelete()">[�ۻ���]</a>
			</div>
		<%
		} else {
		%>

		<%	
		}
		%>
		
		
		
	</div>
</div> 