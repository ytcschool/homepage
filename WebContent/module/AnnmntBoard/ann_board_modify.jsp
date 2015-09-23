<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="kr.or.ytc.web.annmntboard.model.*" %>
<%
Announcement annboard = (Announcement)request.getAttribute("boarddata");
%>
<script type="text/javascript">
	function modifyboard(){
		modifyform.submit();
	}
</script>
<style>
	#annList-wrapper {
	 	padding-top: 40px;
	 	padding-bottom: 50px;
	 	height: 550px; 
	} 
	table {
		margin : 0 auto;
	}
	div#ankor_area {
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

<div id="content">
	<div id="annList-wrapper">
		<div align="center" valign="middle">
			<ul style="font-size:25pt; padding-bottom:30px;">
			<span style="background-color:#DCEBFF">공지사항</ul>	
		</div>

		<form action="<%=request.getContextPath() %>/AnnmntModifyAction.do" method="post" name="modifyform">
			<input type="hidden" name="ANNBOARD_NUM" value=<%=annboard.getANNBOARD_NUM() %>>
			<table>
		
				<tr height="40">
					<td align="center">제 목</td>
					<td colspan="3" align="left" ><input name="ANNBOARD_SUBJECT" value="<%=annboard.getANNBOARD_SUBJECT()%>"></td>
				</tr>
				<tr height="190">
					<td align="center">내 용</td>
					<td colspan="3">
						<textarea name="ANNBOARD_CONTENT" rows="10" cols="78"><%=annboard.getANNBOARD_CONTENT() %></textarea>
					</td>
				</tr>
				
				<tr height="40">
					<%if(!(annboard.getANNBOARD_FILE()==null)){ %>
					<td align="center" align="left">첨부파일</td>
					<td align="center"><%=annboard.getANNBOARD_FILE() %></td>
					<%} %>
					<td width="90">비밀번호</td>
					<td width="90"><input name="ANNBOARD_PASS" type="password" size="15"></td>
				</tr>
			</table>
			
			<div id="ankor_area">
				<a href="javascript:modifyboard()">[등록]</a>
				<a href="javascript:history.go(-1)">[뒤로]</a>
			</div>
		</form>
	</div>
</div>
