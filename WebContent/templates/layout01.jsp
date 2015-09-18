<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<%
System.out.println(request.getAttribute("body"));
%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<link href="${requestScope.css}" type="text/css" rel="stylesheet" />
	<title>${requestScope.title}</title>
</head>
<body>
	<div id="page">
		<div id="sticky-footer-wrap">
			<jsp:include page="${requestScope.header}" />
			<jsp:include page="${requestScope.body}" />
		</div>
	</div>
	<jsp:include page="${requestScope.footer}" />
</body>

</html>