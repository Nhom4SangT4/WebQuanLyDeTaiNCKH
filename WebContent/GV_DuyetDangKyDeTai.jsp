<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>::. Duyệt đăng ký đề tài .::</title>
  <link rel="stylesheet" media="all" type="text/css" href="CSS/bootstrap.min.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/style.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/footable.core.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/footable.standalone.css" />
  <link rel="stylesheet" media="all" type="text/css" href="CSS/font-awesome.min.css"/>
  <link rel="stylesheet" media="all" type="text/css" href="CSS/main.css" >
  <script type="js/jquery-3.1.1.min.js"></script>
  <script type="js/footable.js"></script>
  <script type="js/my_script.js"></script>
  
</head>
<body>
<% 
  Connection connection = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/qldtnckh", "root", "123456");
  Statement statement = connection.createStatement() ;
  ResultSet resultset = 
  statement.executeQuery("select madetai, tendetai, TrangThai from dangkydetai where TrangThai='CHO DUYET'") ; 
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
       	<a href="HomeDuyetDT.jsp" class="list-group-item"><span class="pull-right"></span>Trang Chủ</a>
       	<a href="ThongtincanhanGV.jsp" class="list-group-item "><span class="pull-right"></span>Thông tin cá nhân</a>
       	<a href="XemDanhSachDeTai.jsp" class="list-group-item"><span class="pull-right"></span>Xem danh sách đề tài</a>
		<a href="QuanLy.jsp" class="list-group-item active"><span class="pull-right"></span>Quản Lý đề tài</a>
		<a href="ThongKe.jsp" class="list-group-item "><span class="pull-right"></span>Thống Kê</a>
		<a href="GV_QuanLyDeTaiDuocPhanCong.jsp" class="list-group-item "><span class="pull-right"></span>Quản lý đề tài được phân công</a>
		<a href="#" class="list-group-item "><span class="pull-right"></span>Liên Hệ</a>       
    </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <ol class="breadcrumb">
  <li><a href="Home.jsp">Home</a></li><li><a href="QuanLy.jsp">Quản Lý</a></li><li class="active">Duyệt Đăng Ký Đề Tài</li></ol>    <div class="well-sm">
        <span>
            <span id="random_tin">
            <i class="icon-bullhorn"></i>&nbsp;
            <img src="images/bullet-blue-icon.png" />
            </span>
           
        </span>    
    </div>
                        <div id="w">
			<div style="color: rgb(7, 132, 163);" class"panel-heading"> 
                <center><h1>DANH SÁCH CÁC ĐỀ TÀI CHỜ DUYỆT</h1></center>
              </div>
	<TABLE class="table table-hover" >
            <TR align="center">

                      
                      <th align="center" data-hide="phone"><u>Mã Đề Tài</u></th>
                      <th align="center" data-hide="phone,tablet"><u>Tên Đề Tài</u></th>
                      <th align="center" data-hide="phone,tablet"><u>Trạng Thái</u></th>
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
<div id="w">
            <div class="panel panel-default">
              <div style="color: rgb(7, 132, 163);" class"panel-heading"> 
                <center><h3>DUYỆT ĐĂNG KÝ ĐỀ TÀI</h3></center>
              </div>
  					<table border="0" cellpadding="0" cellspacing="0">
  					
              <form id="contactform" name="contact" action="duyetdetaiservlet" method="post">
                <table border="0" cellpadding="0" cellspacing="0">
                  <div class="panel-body">
                    <div class="form-group">
                      <lable for="txtmadetai" class="control-lable"><strong>Mã đề tài </strong></lable>
                      <input  type="text" name="txtmadetai" id="txtmadetai" class="form-control" tabindex="1" placeholder="Mã số đề tài" required>
                    </div>

                    <div class="form-group">
                      <lable for="txtTrangThai" class="control-lable">Duyệt/Hủy đề tài </lable>
                      <select name="txtTrangThai" id="txtTrangThai" class="form-control" tabindex="2" required>
                        <option value="DUYET">Duyệt đề tài</option>
                        <option value="HUY">Hủy</option>
                        </select>
                    </div>

                    <div class="text-center">
                      <input type="submit" id="submitbtn" name="button" class="btn btn-primary" tabindex="3" value="Xác nhận DUYỆT">
                    </div>
                  </div> 
                </table>
              </form>
              
              <div style="color: rgb(7, 132, 163);" class"panel-heading"> 
                <center><h3>XÓA ĐỀ TÀI</h3></center>
              </div>
              <form id="contactform" name="contact" action="xoadetaiServlet" method="post">
                <table border="0" cellpadding="0" cellspacing="0">
                  <div class="panel-body">
                    <div class="form-group">
                      <lable for="txtmadetai" class="control-lable"><strong>Mã đề tài </strong></lable>
                      <input  type="text" name="txtmadetai" id="txtmadetai" class="form-control" tabindex="1" placeholder="Mã số đề tài" required>
                    </div>

                    <div class="text-center">
                      <input type="submit" id="submitbtn" name="button" class="btn btn-danger" tabindex="2" value="Xác nhận XÓA">
                    </div>
                  </div> 
                </table>
              </form>
              
            </div>

	                    <ol class="breadcrumb">
  <li><a href="Home.jsp">Home</a></li><li><a href="QuanLy.jsp">Quản Lý</a></li><li class="active">Duyệt Đề Tài</li></ol></ol>                 </div>
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