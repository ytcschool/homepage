<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<script language="javascript">
	function addboard(){
		boardform.submit();
	}
</script>
<style>
	#annlist-wrapper {
		padding-top: 40px;
		padding-bottom: 50px;
		height: 550px;	
	}
	
	table {
		/*margin-top :40px;*/
		margin: 0 auto;
	}

</style>	

<div id="content">
	<div id="annlist-wrapper">
		<form action="<%=request.getContextPath() %>/AnnmntAddAction.do" method="post" 
			enctype="multipart/form-data" name="boardform">
			
		<div align="center" valign="middle">
			<ul style="font-size:25pt; padding-bottom:30px;">
			<span style="background-color:#DCEBFF">공지사항</ul>		 
		
		 
			<table>
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
</div>