<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import=" bean.loaibean"%>
<%@ page import="bo.loaibo"%>
<%@ page import="bean.sachbean"%>
<%@ page import="bo.sachbo"%>
<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web sách</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
	<nav class="navbar navbar-inverse ">
		<div class="container-fluid">

			<ul class="nav navbar-nav">
				<li ><a href="htsachController"style="color:#fff"><span class="glyphicon glyphicon-home"style="padding:0 2px 0 0;"></span>  Trang chủ </a></li>

				<li style="padding:0 10px 0 0;">
					<%-- <%
						giohangbo gh = (giohangbo)session.getAttribute("gio");
					%> --%>
					<a href="htgioController" style="color:#fff; position: relative;">
					    <%
						giohangbo gh = (giohangbo)session.getAttribute("gio");
					    if(session.getAttribute("gio")!=null && gh.ds.size()!=0){
					  %>
						<span class="glyphicon glyphicon-shopping-cart" style="padding:0 6px 0 0;"></span>
						<span style="transform: translateY(-50%);color: rgb(36, 36, 36);background: rgb(253, 216, 53);left:22px;border-radius: 20px;
						font-size: 8px;font-weight: 500; padding: 0px 7px; position: absolute;" ><%=gh.ds.size()%></span> Giỏ Hàng 
						<%} %>
						<%-- <span style="transform: translateY(-50%);color: rgb(36, 36, 36);background: rgb(253, 216, 53);left:22px;border-radius: 20px;
						font-size: 8px;font-weight: 500; padding: 0px 7px; position: absolute;" ><%=gh.ds.size()%></span> Giỏ Hàng 
						 --%>
					</a>
				</li>
				<li><a href="#"style="color:#fff"><span class="glyphicon glyphicon-credit-card" style="padding:0 2px 0 0;"></span> Thanh Toán </a></li>
				<li><a href="#"style="color:#fff"><span class="glyphicon glyphicon-list-alt"style="padding:0 2px 0 0;"></span> Lịch sử mua hàng </a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"style="color:#fff"><span class="glyphicon glyphicon-user"style="padding:0 2px 0 0;"></span>
						Sign Up</a></li>
				<li>
				<%if(session.getAttribute("dn")!=null){ %>
				<a href="dangnhap.jsp"style="color:#fff"><span class="glyphicon glyphicon-log-in"style="padding:0 2px 0 0;"></span>
						Login</a>
				<%}else {%>
				<a href="#"style="color:#fff"><span class="glyphicon glyphicon-log-in"style="padding:0 2px 0 0;"></span>
				  Login <%-- <%=session.getAttribute("dn") %> --%>
						</a>
				 <%} %>
							
				</li>
			</ul>
		</div>
	</nav>
<form action="suaxoa.jsp" id="my_form"></form>
<form action="xoachon.jsp" id="my_form1"></form>
<table width="1100" align="center" style="margin-top: 40px;">
   <tr>
     <td width="200" valign="top" style="padding: 0 15px 0 0;">
	     <table class="table table-hover">
	      <%//loaibo lbo=new loaibo();
	       // ArrayList<loaibean> dsloai=lbo.getloai();
	       ArrayList<loaibean> dsloai=(ArrayList<loaibean>)request.getAttribute("dsloai");
	        for(loaibean l: dsloai){
	      %>
	      	<tr>
	           <td>
	            <a href="htsachController?ml<%=l.getMaloai()%>"> 
	              <%=l.getTenloai() %>
	             </a>
	          </td>
	        </tr>
	          <%} %>
	       </table>
     </td>
     <td width="700" valign="top" style="padding: 0 40px; text-align:center">    
  
	       <table class="table"  > 
	      <%  giohangbo ghh =(giohangbo)session.getAttribute("gio");
	      	if(ghh!=null){%>
	      	 <thead>
	      	   <tr>
		      		<th style="text-align:center" > Chọn </th>
		            <th style="padding: 8px 0;text-align:center" >Mã sách</th>
		            <th style="padding: 8px 0;text-align:center">Tên sách</th>
		            <th style="text-align:center">Giá</th>
		            <th style="text-align:center">Số lượng</th>
		            <th style="text-align:center">Thành tiền</th>
		             <th></th>
		        </tr>    
		         <!-- <th><button type="submit" class="btn btn-danger">Cập Nhập</button></th> -->
	            </thead> 
	            
	        
	            
	            <tbody>
		        <% 
		      	  	for(giohangbean s: gh.ds){
		        %>	       	
		        		<tr>
							<td style="padding:20px 0">
				          		<input type="checkbox" name="<%=s.getMasach() %>" form="my_form1"/>
				          	</td>
				          	<td style="padding:20px 0">  
				          		<%=s.getMasach() %>  
				          	</td>
				           	<td style="padding:20px 0"> 
				           		<%=s.getTensach() %>  
				           	</td>
				           	<td style="padding:20px 0"> 
				           		<%=s.getGia() %>     
				           	</td>
				     
					        <td style="padding:20px 0">     
						         <input hidden name="ms" value="<%=s.getMasach()%>" form="my_form"/>      		
						         <input name="txtsl<%=s.getMasach() %>" value="<%=s.getSoluong() %>" type="number" min="1" form="my_form" style="width:60px"/> 
					        </td> 
					        <td style="padding:20px 0">  
					           <%=s.getThanhtien() %>
					        </td>
					           
					        <td style="padding:20px 0">
					           <button type="submit" class="btn btn-info" name="butsua" value ="<%=s.getMasach()%>" form="my_form">
					              Update
					           </button>
					           <button type="submit" class="btn btn-danger" name="butxoa" value ="<%=s.getMasach()%>" form="my_form">
					               <span class="glyphicon glyphicon-trash"style="color:#FFFFFF"></span>
					           </button>
					        </td>
		        		</tr>
		      	<%} %> 
	
	      		</tbody>
		      	<tfoot>
			        <tr>
			        
			          <td></td>
			          <td></td>
			          <td></td>
			          <td></td>
			          <td></td>
			          <td>Tổng tiền</td>
			           <% long s = 0;
				           if(gh!=null) 
				        	 s = gh.Tongtien();
			             %>
			           <td><%=s %></td>
			        </tr>
			        <tr>
			         
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>		 	
			          	<td><button type="submit" class="btn btn-primary" form="my_form1">Xóa Chọn</button></td>    
			           	<td><button class="btn btn-danger"><a href="xoaall.jsp" style="color:#fff">Delete All</a></button></td> 
			        </tr>
		        </tfoot>
			    <% } %>
	       </table>
      </td>
      <td width="200" valign="top">
	      	<form action="htsach.jsp" method="post">
	 		 <input class="form-control" name="txttk" type="text" value="" placeholder="Nhap tt"> <br>
	  		 <input class="btn-success" name="butt" type="submit" value="Search">
			</form>   
      </td>
   </tr>
</table>
</body>
</html>

