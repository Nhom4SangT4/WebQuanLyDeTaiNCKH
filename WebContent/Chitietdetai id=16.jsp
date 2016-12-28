<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>::. Home .::</title>
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
  statement.executeQuery("select madetai, hoten,mssv, khoa,tendetai,linhvuc,thoigianbatdau,thoigianketthuc,kinhphi,ghichu,gvhuongdan,gvphanbien,diem  from dangkydetai where madetai='16'") ; 
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
    
    			<li><a href="logout.jsp">Đăng Xuất</a></li>
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
       	<a href="HomeDuyetDT.jsp" class="list-group-item active"><span class="pull-right"></span>Trang Chủ</a>
       	<a href="Thongtincanhan.jsp" class="list-group-item "><span class="pull-right"></span>Thông tin cá nhân</a>
		<a href="QuanLy.jsp" class="list-group-item "><span class="pull-right"></span>Quản Lý</a>
		<a href="ThongKe.jsp" class="list-group-item "><span class="pull-right"></span>Thống Kê</a>
		<a href="QuanLy.jsp" class="list-group-item "><span class="pull-right"></span>Quản lý đề tài của tôi</a>
		<a href="#" class="list-group-item "><span class="pull-right"></span>Liên Hệ</a>       
    </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <ol class="breadcrumb">
  <li><a href="#">Home</a></li><li class="active">Thông báo</li></ol>
  <div class="panel panel-default">
                        <div  style="color: rgb(7, 132, 163);" class="panel-heading">
                            <h4 style="font-family: verdana;color:rgb(87,87,87);">Chi tiết đề tài</h4>
                        </div>
                        <div class="panel-body">
                            <div id="detail">
    <table class="table table-hover">
    <% while(resultset.next()){ %>
    		<TR">
              <th align="center" data-hide="phone,tablet">Mã đề tài </th>
              <TD> <%= resultset.getString(1) %></TD>
            </TR>
        	<TR">
              <th align="center" data-hide="phone,tablet">SVTH </th>
              <TD> <%= resultset.getString(2) %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Mã số sinh viên </th>
              <TD> <%= resultset.getString(3) %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Khoa </th>
              <TD> <%= resultset.getString(4) %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Tên đề tài</th>
              <TD> <%= resultset.getString(5) %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Lĩnh vực</th>
              <TD> <%= resultset.getString(6) %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Thời gian bắt đầu</th>
              <TD> <%= resultset.getString(7) %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Thời gian kết thúc</th>
              <TD> <%= resultset.getString(8) %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Kinh phí</th>
              <TD> <%= resultset.getString(9) %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Ghi chú</th>
              <TD> <%= resultset.getString(10) %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">GV hướng dẫn</th>
              <TD> <%= resultset.getString(11) %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">GV Phản biện</th>
              <TD> <%= resultset.getString(12) %></TD>
            </TR>
            <TR>
              <th align="center" data-hide="phone,tablet">Điểm</th>
              <TD> <%= resultset.getString(13) %></TD>
            </TR>
            <% } %>
        <tr>
            <td colspan="2" style="text-align: center;"><button id="back" type="button" class="btn btn-info">Quay về</button></td>
        </tr>
    </table>
</div>
</div> 
                    <ol class="breadcrumb">
  <li><a href="#">Home</a></li><li class="active">Thông báo</li></ol>               </div>
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
