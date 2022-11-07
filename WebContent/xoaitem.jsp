<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="bo.giohangbo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
   String ms=request.getParameter("ms");
   giohangbo gh=(giohangbo)session.getAttribute("gio");
   gh.XoaItem(ms);
   session.setAttribute("gio",gh);
   response.sendRedirect("htgio.jsp");
%>
</body>
</html>