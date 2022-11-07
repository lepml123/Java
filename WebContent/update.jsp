<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="bo.giohangbo"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  ArrayList<String> ds = new ArrayList<String>(request.getParameterMap().keySet());
  giohangbo gh=(giohangbo)session.getAttribute("gio");
  ArrayList<Long> dssoluong=new ArrayList<Long>();
   for(String i: ds){
	   long SoLuong=Long.parseLong(request.getParameter(i));
	   dssoluong.add(SoLuong);
   }
   gh.Update(ds,dssoluong);
   session.setAttribute("gio",gh);
   response.sendRedirect("htgio.jsp");
  
%>
</body>
</html>