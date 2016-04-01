<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%
	request.setAttribute("css", request.getContextPath() + "/resources/css/ytcweb.css");
	request.setAttribute("header", "header.jsp");
	request.setAttribute("footer", "footer.jsp");
%> 

<!-- include abstract layout -->
<%@ include file="layout01.jsp" %>