<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>

#annList-wrapper {
 	padding-top: 40px;
 	padding-bottom: 50px;
 	height: 550px; 
 } 

table {
	width : 200px;
	height : 100px;
	margin : 80px auto;
	border: 1px solid black;
}

</style>
<%
	int num=Integer.parseInt(request.getParameter("num"));
%>
<div id="content">
	<div id="annList-wrapper">
		<form name="deleteForm" action="<%=request.getContextPath() %>/AnnmntDeleteAction.do?num=<%=num %>" 
			method="post">
			<div align="center" valign="middle">
					<ul colspan="4" style="font-size:25pt; padding-bottom:30px;">
					<span style="background-color:#DCEBFF">공지사항</ul>	
			</div>
			
			<table border=1 cellspacing="0">
				<tr>
					<td>
						<font size=2>글 비밀번호 </font>
					</td>
					<td>
						<input name="ANNBOARD_PASS" type="password" size="10" maxlength="10">
					</td>
				</tr>
				<tr>
					<td colspan=2 align=center>
						<a href="javascript:deleteForm.submit()">삭제</a>	&nbsp; &nbsp; &nbsp;
						<a href="javascript:history.go(-1)">돌아가기</a>
					</td>
				</tr>
		</table>
		</form>
	</div>
</div>
