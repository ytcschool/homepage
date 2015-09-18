<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%
	request.setAttribute("css", "/YTC-Website-v1.0/resources/css/ytcweb.css");
	request.setAttribute("header", "header.jsp");
	request.setAttribute("footer", "footer.jsp");
	System.out.println(request.getAttribute("body"));
%> 

<!-- include abstract layout -->
<%@ include file="layout01.jsp" %>