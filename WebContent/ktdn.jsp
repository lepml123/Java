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
    String username=request.getParameter("txtusername");
    String password=request.getParameter("txtpassword");
    if(username.equals("abc")&&password.equals("123")){
    	session.setAttribute("dn",username);
    	response.sendRedirect("htsach.jsp");
    	
    }else{
    		response.sendRedirect("dangnhap.jsp?kt=1");
    }
    
%>
</body>
</html>