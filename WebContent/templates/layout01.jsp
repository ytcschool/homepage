<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<link href="${requestScope.css}" type="text/css" rel="stylesheet" />
	<title>${requestScope.title}</title>
</head>
<body>
	<jsp:include page="${requestScope.header}" />
	<jsp:include page="${requestScope.body}" />
	<jsp:include page="${requestScope.footer}" />
</body>

</html>