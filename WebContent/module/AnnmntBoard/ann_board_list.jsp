<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="kr.or.ytc.web.annmntboard.model.*" %>

<%
	List boardList=(List)request.getAttribute("boardlist");
	int listcount = 0, maxpage = 0, startpage = 0, endpage = 0, nowpage = 0;
	if(request.getAttribute("listcount") != null) {
		listcount=((Integer)request.getAttribute("listcount")).intValue();
		maxpage=((Integer)request.getAttribute("maxpage")).intValue();
		startpage=((Integer)request.getAttribute("startpage")).intValue();
		endpage=((Integer)request.getAttribute("endpage")).intValue();
		nowpage=((Integer)request.getAttribute("page")).intValue();
	}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�ӽ� �Խ��� ����Ʈ</title>
</head>
<body>
<!-- �Խ��� ����Ʈ -->

<table width=50% border="0" cellpadding="0" cellspacing="0">
<%
if(listcount > 0){
	
%>
	<tr align="center" valign="middle">
		<td colspan="4">YTC �ӽðԽ���</td>
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