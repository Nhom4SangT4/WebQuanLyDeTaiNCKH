<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<!doctype html>
<html lang="en-US">
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <title>::. Phân Quyền Tài Khoản .::</title>
  <link rel="stylesheet" media="all" type="text/css" href="CSS/styles.css">
  <link rel="stylesheet" media="all" type="text/css" href="CSS/bootstrap.min.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/style.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/footable.core.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/footable.standalone.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/font-awesome.min.css"/>
  <link rel="stylesheet" media="all" type="text/css" href="CSS/main.css" >
  <script type="js/jquery-1.10.2.min.js"></script>
  <script type="js/footable.js"></script>
  <script type="js/my_script.js"></script>
 
</head>
<body>
	<% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/qldtnckh", "root", "123456");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select tentaikhoan, email, Nhom from taikhoan where Nhom<>'0'") ; 
     %>
	<table cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse;">
	<tbody><tr>
		<td colspan="2"><div id="pnTop">
			<div id="pnTopDisplay" style="width:1000px;float:left;
">
				<div id="ctl05_portlet_1cfe540a-31bb-41fd-a3b8-367e8dd6581a" style="width:775px;float:left;padding:15px 0px 0px 0px;">
					<div class="logo_ute"><a href="#"><img alt="" src="images/skpt_banner_2.jpg"></a><br>
					</div>

				</div><div>
					<div class="sup_menu">
				<ul>
    
    			<li><a href="DangNhap.jsp">Đăng Xuất</a></li>
				</ul>
					</div>
				</div><div id="ctl05_portlet_9b8ba9cf-dd1c-4b80-91fe-8787110cd93b" style="padding:10px 0px 0px 0px;width:1000px;float:left"><div>
					<marquee direction="right"><span style="text-align: left; font-size: 20px; font-family: arial; color: #ff0000;"><a href="#">ĐĂNG KÝ ĐỀ TÀI NGHIÊN CỨU KHOA HỌC</a>
					</span></marquee>

				</div></div>
			</div>
		</div></td>
	</tr>
</tbody></table>   
       <div id="wrapper">
        <div class="container">
            <div class="row">
                <div id="left-content">
                    <div class="col-md-3">
                        <!-- Menu desktop -->
                        <div id="desktop-menu">
    <div class="panel panel-default">
        <div class="panel-heading">
        
            <h4 id="mobile_home">Danh Mục</h4>   
        </div>
       	<a href="PhanQuyenTaiKhoan.jsp.jsp" class="list-group-item action"><span class="pull-right"></span>Quản Lý Tài Khoản</a>       
    </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <ol class="breadcrumb">
  <li><a href="HomeAdmin.jsp">Home</a></li><li class="active">Quản Lý Tài Khoản</li></ol>    <div class="well-sm">
        <span>
            <span id="random_tin">
            <i class="icon-bullhorn"></i>&nbsp;
            <img src="images/bullet-blue-icon.png" />
            </span>
           
        </span>    
    </div>
                        <div id="w">
	<h1>Danh Sách Account</h1>
	<TABLE class="table table-hover" >
            <TR align="center">

                      
                      <th align="center" data-hide="phone"><u>ID</u></th>
                      <th align="center" data-hide="phone,tablet"><u>Email</u></th>
                      <th align="center" data-hide="phone,tablet"><u>Nhóm</u></th>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
            </TR>
            <% } %>
        </TABLE>
</div>

	<form id="contactform" name="contact" action="phanquyentaikhoanServlet" method="post">
  
  <div class="row">
    <label for="name">ID Set: <span class="req"></span></label>
    <input type="text" name="txtid" id="txtid" class="txt" tabindex="1" placeholder="ID" required>
  </div>
   
  <div class="row">
    <label for="MSSV">Phân Nhóm: <span class="req"></span></label>
    <input type="text" name="txtNhom" id="txtNhom" class="txt" tabindex="2" placeholder="2/3" required>
  </div>
   
  <div class="center">
    <input type="submit" id="submitbtn" name="button" tabindex="3" value="Hoàn Thành">
    </div><br><br>
</form>

<form id="contactform" name="contact" action="xoataikhoanServlet" method="post">
  
  <div class="row">
    <label for="name">ID Xóa: <span class="req"></span></label>
    <input type="text" name="txtTenTK" id="txtTenTK" class="txt" tabindex="1" placeholder="ID" required>
  </div>
   
  <div class="center">
    <input type="submit" id="submitbtn" name="button" tabindex="2" value="Xóa">
    </div><br><br>
</form>
                    <ol class="breadcrumb">
  <li><a href="HomeAdmin.jsp">Home</a></li><li class="active">Quản Lý Tài Khoản</li></ol>              </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div id="footer">
        <hr />
            <h5 class="text-center text-danger">Đại học Sư phạm Kỹ thuật TP. Hồ Chí Minh</h5>
            <h5 class="text-center text-danger">Số 1, Võ Văn Ngân, Thủ Đức, TP. Hồ Chí Minh</h5>
        </div>
    </div>
</div><!-- End #container -->
<div id="loading">
    <span>Đang tải ...</span>
</div>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>