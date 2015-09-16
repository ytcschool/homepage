<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<style>
	#content {
		padding-top: 40px;
		padding-bottom: 50px;
	}
	table {
		margin: 0 auto;
	}
	#BtnArea {
		padding-top: 30px;
	}
</style>

<div id="content">
	<script language="javascript">
		function addboard(){
		boardform.submit();
	}
	</script>
<!-- 게시판 등록 -->
<form action="<%=request.getContextPath() %>/BoardAddAction.do" method="post" 
	enctype="multipart/form-data" name="boardform">

<div align="center" valign="middle">
		<ul style="font-size:25pt; padding-bottom:30px;">
		<span style="background-color:#DCEBFF">Q/A 게시판</ul>	
</div>
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
			<input name="BOARD_SUBJECT" type="text" size="35" maxlength="100" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:15px" height="30px">
			<div align="center">내 &nbsp; 용</div>
		</td>
		<td colspan="3">
			<textarea name="BOARD_CONTENT" cols="67" rows="15"></textarea>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:15px" height="30px">
			<div align="center">파일 첨부</div>
		</td>
		<td align="left">
			<input type="file" name="BOARD_FILE" />
		</td>
		<td style="font-family:돋음; font-size:15px" height="30px">
			<div align="center">비밀번호</div>
		</td>
		<td align="left">
			<input name="BOARD_PASS" type="password" size="10" maxlength="10" 
				value=""/>
		</td>
	</tr>
</table>
	<div id="BtnArea" align="center" valign="middle">
		<a href="javascript:addboard()">[등록]</a> &nbsp; &nbsp; &nbsp;
		<a href="javascript:history.go(-1)">[뒤로]</a>	
	</div>
</form>

</div>