
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
	<nav class="navbar navbar-inverse " >
		<div class="container-fluid">

			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Trang chủ</a></li>
      			<li><a href="htgio.jsp">Giỏ hàng</a></li>
      			<li><a href="#">Thanh toán</a></li>
      			<li><a href="#">Lịch sử mua hàng</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"style="color:#fff"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="dangnhap.jsp" style="color:#fff"><span class="glyphicon glyphicon-log-in"></span>
						Đăng nhập</a></li>
			</ul>
		</div>
	</nav>

	<table  width=1000 align="center" ><!--style="width: 1440px" ;  --> 
			<tr>
				<td width="250" valign="top" style="padding: 0 30px 0 0;">
				 <table class="table table-hover">
						<%loaibo lbo=new loaibo();
                          ArrayList<loaibean> dsloai=lbo.getloai();
                         for(loaibean l: dsloai){
                        %>
						<tr>
							<td><a href="htsach.jsp?ml=<%=l.getMaloai()%>"> <%=l.getTenloai() %>
							</a></td>
						</tr>
						<%} %>
					</table>
				</td>
				<td width="500" valign="top" style="padding: 0 70px;">

				<table>
					<span style="padding-top:0px;margin:0; text-align:center;font-weight: 700 ">Login</span>
		            <form action="ktdn.jsp" method="post" >
                        <div class="form-group">
					    <label for="exampleInputText"> </label> username  <input
						type="text" class="form-control" id="loginID" name="txtusername"
						placeholder="Tài khoản">
				       </div>
				       <div class="form-group">
					    <label for="exampleInputPassword1"> </label> password  <input
						type="password" class="form-control" id="password" name="txtpassword"
						placeholder="Mật khẩu">
				      </div>
				      <button type="submit" class="btn btn-primary btn-login">Login</button>
                        <% if(request.getParameter("kt")!=null){
    	                out.print("Dang nhap sai");
                        } 
                         %>
                   </form>
				</table>

				</td>
				<td width="250" valign="top" >
                   	 <span style="font-weight: 700">Tìm kiếm</span>
					<form action="htsach.jsp" method="post">
						<input name="txttk" type="text" value="" placeholder="Nhap thong tin ">
						<br>  <input class="btn-success" name="butt" type="submit" value="Search"></div>
		          </form>

				</td>
			</tr>
		</table>
</body>
</html>