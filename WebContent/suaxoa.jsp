<%@page import="bo.giohangbo"%>
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
    String ms = request.getParameter("ms");
    giohangbo gh = (giohangbo) session.getAttribute("gio");

    if (request.getParameter("butsua") != null) {
        long sl = Long.parseLong(request.getParameter("txtsl"+request.getParameter("butsua")));
        gh.Capnhapgiohang(request.getParameter("butsua"), sl);
    }
    else {
        gh.XoaItem(request.getParameter("butxoa"));
    }
    session.setAttribute("gio", gh);
    if (gh.ds.size() != 0)
        response.sendRedirect("htgio.jsp");
    else
        response.sendRedirect("htsach.jsp");
    %>

</body>
</html>