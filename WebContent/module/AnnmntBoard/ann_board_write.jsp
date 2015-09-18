<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<script language="javascript">
	function addboard(){
		boardform.submit();
	}
</script>
<style>

h1 {
	border : 1px solid black;
	width : 150px;
	margin: auto;
	text-align: center;
	background : pink;
	margin-top : 40px;
	
}
table {
	margin-top :40px;
}

</style>	

<div id="content">
<form action="<%=request.getContextPath() %>/AnnmntAddAction.do" method="post" 
	enctype="multipart/form-data" name="boardform">
	
	<h1>공지사항</h1>
	<table border="0" width="800" height="350" align="center" >
		<tr>
			<td width="100">글쓴이</td>
			<td><input name="ANNBOARD_NAME" type="text"></td>
		</tr>
		<tr>
			<td width="100">제 목</td>
			<td colspan="2"><input name="ANNBOARD_SUBJECT" type="text" size="44"></td>
		</tr>
		<tr height="250">
			<td width="100">내 용</td>
			<td colspan="4"><textarea  name="ANNBOARD_CONTENT" rows="12" cols="95"></textarea></td>
		</tr>
		<tr>
			<td width="100">파일첨부</td>
			<td><input name="ANNBOARD_FILE" type="file" value="&nbsp;&nbsp;&nbsp;&nbsp;찾아보기...&nbsp;&nbsp;&nbsp;&nbsp;"/></td>
			<td width="100">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;비밀번호</td>
			<td width="100"><input name="ANNBOARD_PASS" type="password" size="10"></td>
		</tr>
	
	</table></br>
	<div id="ankor_area" align="center">
		<a href="javascript:addboard()">[등록]</a> &nbsp;&nbsp;<a href="javascript:history.go(-1)">[뒤로]</a>
	</div>
</form>
</div>

<!-- 게시판 등록 
<form action="<%=request.getContextPath() %>/AnnmntAddAction.do" method="post" 
	enctype="multipart/form-data" name="boardform">
<table cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="5">MVC 게시판</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">글쓴이</div>
		</td>
		<td>
			<input name="ANNBOARD_NAME" type="text" size="10" maxlength="10" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">비밀번호</div>
		</td>
		<td>
			<input name="ANNBOARD_PASS" type="password" size="10" maxlength="10" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">제 목</div>
		</td>
		<td>
			<input name="ANNBOARD_SUBJECT" type="text" size="50" maxlength="100" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">내 용</div>
		</td>
		<td>
			<textarea name="ANNBOARD_CONTENT" cols="67" rows="15"></textarea>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">파일 첨부</div>
		</td>
		<td>
			<input name="ANNBOARD_FILE" type="file"/>
		</td>
	</tr>
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	<tr align="center" valign="middle">
		<td colspan="5">
			<a href="javascript:addboard()">[등록]</a>&nbsp;&nbsp;
			<a href="javascript:history.go(-1)">[뒤로]</a>
		</td>
	</tr>
</table>
</form>


</body>
</html>
게시판 등록 -->