<%@page import="bo.giohangbo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    ArrayList<String> ds = new ArrayList<String>(request.getParameterMap().keySet());
    giohangbo gh = (giohangbo) session.getAttribute("gio");
    for(String i: ds){
        gh.XoaItem(i);
    }
    if (gh.ds.size() != 0)
        response.sendRedirect("htgio.jsp");
    else
        response.sendRedirect("htsach.jsp");
%>
</body>
</html>