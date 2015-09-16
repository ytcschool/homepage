<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="kr.or.ytc.qnaboard.model.*" %>
<%
	BoardBean board = (BoardBean)request.getAttribute("boarddata");
%>
<style>
	#qnalist-wrapper {
			padding-top: 40px;
			padding-bottom: 50px;
			height: 550px;
		}
	table {
		margin: 0 auto;
	}
	#BtnArea {
		padding-top: 30px;
	}
</style>

<div id="content">
<div id="qnalist-wrapper">
	<title>Q/A �Խ���</title>
	<script type="text/javascript">
	function modifyboard(){
		modifyform.submit();
	}
	</script>


<form action="BoardModifyAction.do" method="post" name="modifyform">
<input type="hidden" name="BOARD_NUM" value=<%=board.getBOARD_NUM() %>>

<div align="center" valign="middle">
	<ul style="font-size:25pt; padding-bottom:30px;">
	<span style="background-color:#DCEBFF">Q/A �Խ���</ul>	
</div>
<table>
	<tr>
		<td style="font-family:����; font-size:15px" height="30px">
			<div align="center">�� &nbsp; ��</div>
		</td>
		<td align="left">
			<input name="BOARD_SUBJECT" size="35" maxlength="100" 
				value="<%=board.getBOARD_SUBJECT()%>">
		</td>
	</tr>
	<tr>
		<td style="font-family:����; font-size:15px" height="30px">
			<div align="center">�� &nbsp; ��</div>
		</td>
		<td colspan="3">
			<textarea name="BOARD_CONTENT" cols="67" rows="15"><%=board.getBOARD_CONTENT() %></textarea>
		</td>
	</tr>
	
	<tr>
		<td style="font-family:����; font-size:15px" height="30px">
			<div align="center">���� ÷��</div>
		</td>
	<%if(!(board.getBOARD_FILE()==null)){ %>
		<td align="center">
			<a href="./boardUpload/<%=board.getBOARD_FILE()%>">
			<%=board.getBOARD_FILE() %>
		</td>
	<%} %>
		<td style="font-family:����; font-size:15px" height="30px">
			<div align="right">��й�ȣ</div>
		</td>
		<td align="right">
			<input name="BOARD_PASS" type="password" size="10" maxlength="10" >
		</td>
	</tr>
</table>
	<div id="BtnArea" align="center" valign="middle">
			<a href="javascript:modifyboard()">[����]</a>&nbsp;&nbsp;
			<a href="javascript:history.go(-1)">[�ڷ�]</a>&nbsp;&nbsp;
			</font>
		</div>
	</tr>
</form>
<!-- �Խ��� ���� -->
</div>
</div>