<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.or.ytc.qnaboard.model.*" %>
<%
	BoardBean board=(BoardBean)request.getAttribute("boarddata");
%>
<style>
	#qnalist-wrapper {
			padding-top: 40px;
			padding-bottom: 50px;
			height: 470px;
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
	<script language="javascript">
	function replyboard(){
		boardform.submit();
	}
	</script>

<form action="./BoardReplyAction.do" method="post" name="boardform">
<input type="hidden" name="BOARD_NUM" value="<%=board.getBOARD_NUM() %>">
<input type="hidden" name="BOARD_RE_REF" value="<%=board.getBOARD_RE_REF() %>">
<input type="hidden" name="BOARD_RE_LEV" value="<%=board.getBOARD_RE_LEV() %>">
<input type="hidden" name="BOARD_RE_SEQ" value="<%=board.getBOARD_RE_SEQ() %>">


<div align="center" valign="middle">
	<ul style="font-size:25pt; padding-bottom:30px;">
	<span style="background-color:#DCEBFF">Q/A 게시판</ul>	
<table>
	<tr>
		<td style="font-family:돋음; font-size:15px" height="30px">
			<div align="center">글쓴이</div>
		</td>
		<td align="left">
			<input name="BOARD_NAME" type="text" size="10" maxlength="10" 
				value=""/>
		</td>
	</tr>
	
	<tr>
		<td style="font-family:돋음; font-size:15px" height="30px">
			<div align="center">제 &nbsp; 목</div>
		</td>
		<td align="left">
			<input name="BOARD_SUBJECT" type="text" size="50" 
				maxlength="100" value="Re: <%=board.getBOARD_SUBJECT() %>"/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:15px" height="30px">
			<div align="center">내 용</div>
		</td>
		<td>
			<textarea name="BOARD_CONTENT" cols="67" rows="15"></textarea>
		</td>
	</tr>
	<tr>
		<td></td>
		<td style="font-family:돋음; font-size:15px" height="30px">
			<div align="right">비밀번호<input name="BOARD_PASS" type="password" 
				size="10" maxlength="10"></div>
		</td>
	</tr>
</table>
	<div id="BtnArea" align="center" valign="middle">
		<a href="javascript:replyboard()">[등록]</a> &nbsp; &nbsp; &nbsp;
		<a href="javascript:history.go(-1)">[뒤로]</a>
	</div>

</form>
</div>
</div>