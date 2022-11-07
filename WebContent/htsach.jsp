<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import=" bean.loaibean"%>
<%@ page import="bo.loaibo"%>
<%@ page import="bean.sachbean"%>
<%@ page import="bo.sachbo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Khiết</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
	<nav class="navbar navbar-inverse"  >
		<div class="container-fluid">

			<ul class="nav navbar-nav">
				<li class="active"><a href="htsachController">Trang chủ</a></li>     
      			<li><a href="htgioController">Giỏ hàng</a></li>
      			<li><a href="#">Thanh toán</a></li>
     			<li><a href="#">Lịch sử mua hàng</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" style="color:#fff"><span class="glyphicon glyphicon-user"></span>
						Đăng kí</a></li>
				<li>
				<%if(session.getAttribute("dn")==null){ %>
				<a href="dangnhap.jsp"style="color:#fff"><span class="glyphicon glyphicon-log-in"></span>
						Đăng nhập</a>
				<%}else {%>
				<a href="logout.jsp"style="color:#fff"><span class="glyphicon glyphicon-log-in"></span>
				 <!-- <%=session.getAttribute("dn") %> --></a>
				 <%} %>			
				</li>
			</ul>
		</div>
	</nav>

	<table width="1100" align="center" >
			<tr>
				<td width="300" valign="top" style="padding: 0 0px 0 0;" >   
				<span style="font-weight: 700"> Hiển thị loại sách</span>
				 <table class="table table-hover">
						<%//loaibo lbo=new loaibo();
        				//ArrayList<loaibean> dsloai=lbo.getloai();
        				ArrayList<loaibean> dsloai=(ArrayList<loaibean>)request.getAttribute("dsloai");
        				for(loaibean l: dsloai){
      					%>
						<tr>
							<td><a href="htsachController?ml=<%=l.getMaloai()%>"> <%=l.getTenloai() %>
								</a></td>
						</tr>
						<%} %>
					</table>
				</td>
				<td width="600" valign="top" style="padding: 0 70px;" >
                <span style="font-weight: 700;margin-left:13px"> Hiển thị sách</span>
					<table>
						<%
					      	/* request.setCharacterEncoding("utf-8");
					      	response.setCharacterEncoding("utf-8");
					      
					     	sachbo sbo=new sachbo();
					        ArrayList<sachbean> dssach=sbo.getsach();
					        String ml=request.getParameter("ml");
					        String key=request.getParameter("txttk");
					        if(ml!=null)
					        	dssach=sbo.TimMa(ml);
					        else
					        	if(key!=null)
					        		dssach=sbo.Tim(key);
					         */
					         ArrayList<sachbean> dssach=(ArrayList<sachbean>)request.getAttribute("dssach");
					        int n=dssach.size();
					        for(int i=0;i<n;i++){
					        	sachbean s=dssach.get(i);
					        
       					%>
						<tr>
							<td>
						 <div class="container-fluid">
							 <div class= "row d-inline-flex">
                               <div class ="col-12 col-sm-6 col-md-4 p-2">
                                  <div class="d-flex flex-column text-center border height100">
                                     <div>
						                <img src="<%=s.getAnh() %>" width="260px" height="260px"> 
						            </div>
							    </div>
						     </div>
					       </div>
						       
						       <br> <%=s.getTensach() %>
								<br> <%=s.getTacgia() %> 
								<br><span><%=s.getGia() %>.000đ</span>  
								<a href="giohangController?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>">
              <br> <img src="mua.jpg">
            </a>
            

							</td>
							<%i++;
                             if(i<n){
                             s=dssach.get(i);%>
							<td>
							<div class= "row d-inline-flex">
                               <div class ="col-12 col-sm-6 col-md-4 p-2">
                                  <div class="d-flex flex-column text-center border height100">
                                     <div>
						                <img src="<%=s.getAnh() %>" width="260px" height="260px"> 
						            </div>
							    </div>
						     </div>
					       </div>
							<br> <%=s.getTensach() %>
							<br> <%=s.getTacgia() %> 
							<br> <span><%=s.getGia() %>.000đ</span>  
							<a href="giohangContrtoller?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>">
               <br><img src="mua.jpg">
            </a>

						  </td>
					  </div>
							<%} %>
						</tr>
						<%} %>
					</table>

				</td>
				<td width="200" valign="top" >
                     <span style="font-weight: 700">Tìm kiếm<span>
					<form action="htsachController" method="post">
						<input name="txttk" type="text" value="" placeholder="Nhap thong tin ">
						<br>  <input class="btn-success" name="butt" type="submit" value="Search">
		          </form>

				</td>
			</tr>
		</table>
</body>
</html>