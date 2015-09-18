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
h1 {
	border: 1px solid black;
	width: 150px;	
	text-align: center;
	background: pink;
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

	<h1>��������</h1>

	<table border="0"> 
	<%
	if(listcount > 0){
		
	%>
		<tr align="center">
			<td style=width:8%>�۹�ȣ</td>
			<td style=width:50%>����</td>
			<td style=width:14%>�ۼ���</td>
			<td style=width:17%>�ۼ���</td>
			<td style=width:11%>��ȸ��</td>
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
		[����]&nbsp;&nbsp;&nbsp;&nbsp;
		<%}else{ %>
		<a href="<%=request.getContextPath() %>/AnnmntList.do?page=<%=nowpage-1 %>">[����]&nbsp;&nbsp;&nbsp;&nbsp;</a>
		<%} %>
		
		<%for(int a=startpage;a<=endpage;a++){
			if(a==nowpage){%>
			[<%=a %>]
			<%}else{ %>
			<a href="<%=request.getContextPath() %>/AnnmntList.do?page=<%=a %>">&nbsp;&nbsp;[<%=a %>]</a>
			<%} %>
		<%} %>
		
		<%if(nowpage>=maxpage){ %>
		&nbsp;&nbsp;&nbsp;&nbsp;[����]
		<%}else{ %>
		<a href="<%=request.getContextPath() %>/AnnmntList.do?page=<%=nowpage+1 %>">&nbsp;&nbsp;&nbsp;&nbsp;[����]</a>
		<%} %>
	</div>
	<%
	}
	else
	{
	%>
			<font size=5>��ϵ� ���� �����ϴ�.</font>
	<%
	}
	%>
	
	<div id="write">
		<a href="<%=request.getContextPath()%>/AnnmntWrite.do">[�۾���]</a>
	</div>
</div>


<!-- �Խ��� ����Ʈ

<table width=50% border="0" cellpadding="0" cellspacing="0">
<%
if(listcount > 0){
	
%>
	<tr align="center" valign="middle">
		<td colspan="4"> YTC �ӽðԽ���</td>
		<td align=right>
			<font size=2>�� ���� : ${listcount }</font>
		</td>
	</tr>
	
	<tr align="center" valign="middle" bordercolor="#333333">
		<td style="font-family:Tahoma;font-size:8pt;" width="8%" height="26">
			<div align="center">��ȣ</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="50%">
			<div align="center">����</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="14%">
			<div align="center">�ۼ���</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="17%">
			<div align="center">��¥</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="11%">
			<div align="center">��ȸ��</div>
		</td>
	</tr>
	
	<%
 	//System.out.println(">>>>>>>>>boardList.size() => " + boardList.size());
		for(int i=0;i<boardList.size();i++){
			Announcement bl=(Announcement)boardList.get(i);
	%>
	<tr align="center" valign="middle" bordercolor="#333333"
		onmouseover="this.style.backgroundColor='F8F8F8'"
		onmouseout="this.style.backgroundColor=''">
		<td height="23" style="font-family:Tahoma;font-size:10pt;">
			<%=bl.getANNBOARD_NUM()%>
		</td>
		
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="left">
			<%if(bl.getANNBOARD_RE_LEV()!=0){ %>
				<%for(int a=0;a<=bl.getANNBOARD_RE_LEV()*2;a++){ %>
				&nbsp;
				<%} %>
				��
			<%}else{ %>
				��
			<%} %>
			<a href="<%=request.getContextPath() %>/AnnmntDetailAction.do?num=<%=bl.getANNBOARD_NUM()%>">
				<%=bl.getANNBOARD_SUBJECT()%>
			</a>
			</div>
		</td>
		
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><%=bl.getANNBOARD_NAME() %></div>
		</td>
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><%=bl.getANNBOARD_DATE() %></div>
		</td>	
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><%=bl.getANNBOARD_READCOUNT() %></div>
		</td>
	</tr>
	<%} %>
	<tr align=center height=20>
		<td colspan=7 style=font-family:Tahoma;font-size:10pt;>
			<%if(nowpage<=1){ %>
			[����]&nbsp;
			<%}else{ %>
			<a href="<%=request.getContextPath() %>/AnnmntList.do?page=<%=nowpage-1 %>">[����]</a>&nbsp;
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
		</td>
	</tr>
	<%
    }
	else
	{
	%>
	<tr align="center" valign="middle">
		<td colspan="4">YTC �Խ���</td>
		<td align=right>
			<font size=2>��ϵ� ���� �����ϴ�.</font>
		</td>
	</tr>
	<%
	}
	%>
	<tr align="right">
		<td colspan="5">
	   		<a href="<%=request.getContextPath() %>/AnnmntWrite.do">[�۾���]</a>
		</td>
	</tr>
</table>

</body>
</html>
�Խ��� ����Ʈ -->