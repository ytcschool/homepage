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
	width : 1250px;
	text-align : center;
	margin-top : 40px;
}

div#ankor_area > a {
	margin: 0 30px;
}

tr#content_tr {
	cellpadding : 40px;
	vertical-align: top;
}

</style>

<!-- 
	<script type="text/javascript">
	function modifyboard(){
		modifyform.submit();
	}
	</script>
	
	<style>
		div#ankor_area {
		width : 1250px;
		text-align : center;
		margin-top : 40px;
		}
	
	</style>
 -->
<div id="content">

<h1>��������</h1>
<form action="<%=request.getContextPath() %>/AnnmntModifyAction.do" method="post" name="modifyform">
<input type="hidden" name="ANNBOARD_NUM" value=<%=annboard.getANNBOARD_NUM() %>>
	<table border="0" width="600" height="270" align="center"cellspacing="0" >

		<tr height="40">
			<td width="100" align="center">�� ��</td>
			<td colspan="3"><input  name="ANNBOARD_SUBJECT" value="<%=annboard.getANNBOARD_SUBJECT()%>"></td>
		</tr>
		<tr height="190">
			<td align="center" width="100">�� ��</td>
			<td colspan="3">
				<textarea name="ANNBOARD_CONTENT" rows="10" cols="78"><%=annboard.getANNBOARD_CONTENT() %></textarea>
			</td>
		</tr>
		
		<tr height="40">
			<%if(!(annboard.getANNBOARD_FILE()==null)){ %>
			<td align="center">÷������</td>
			<td align="center"><%=annboard.getANNBOARD_FILE() %></td>
			<%} %>
			<td width="90">��й�ȣ</td>
			<td width="90"><input name="ANNBOARD_PASS" type="password" size="15"></td>
		</tr>
		
	</table>
	</form>
	<div id="ankor_area">
		<a href="javascript:modifyboard()">[����]</a>
		<a href="javascript:history.go(-1)">[���]</a>
	</div>

</div>


<!-- �Խ��� ���� 
<form action="<%=request.getContextPath() %>/AnnmntModifyAction.do" method="post" name="modifyform">
<input type="hidden" name="ANNBOARD_NUM" value=<%=annboard.getANNBOARD_NUM() %>>
<table cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="5">YTC �ӽ� �Խ���</td>
	</tr>
	<tr>
		<td height="16" style="font-family:����; font-size:12">
			<div align="center">�� ��</div>
		</td>
		<td>
			<input name="ANNBOARD_SUBJECT" size="50" maxlength="100" 
				value="<%=annboard.getANNBOARD_SUBJECT()%>">
		</td>
	</tr>
	<tr>
		<td style="font-family:����; font-size:12">
			<div align="center">�� ��</div>
		</td>
		<td>
			<textarea name="ANNBOARD_CONTENT" cols="67" rows="15"><%=annboard.getANNBOARD_CONTENT() %></textarea>
		</td>
	</tr>
	<%if(!(annboard.getANNBOARD_FILE()==null)){ %>
	<tr>
		<td style="font-family:����; font-size:12">
			<div align="center">���� ÷��</div>
		</td>
		<td>
			&nbsp;&nbsp;<%=annboard.getANNBOARD_FILE() %>
		</td>
	</tr>
	<%} %>
	<tr>
		<td height="16" style="font-family:����; font-size:12">
			<div align="center">��й�ȣ</div>
		</td>
		<td>
			<input name="ANNBOARD_PASS" type="password">
		</td>
	</tr>
	
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	

		<tr align="center" valign="middle">
			<td colspan="5">
				<font size=2>

		<div id="ankor_area">
			<a href="javascript:modifyboard()">[����]</a>
			<a href="javascript:history.go(-1)">[���]</a>
		</div>
	</font>
		</td>
	</tr>

</table>
</form>
�Խ��� ���� -->
